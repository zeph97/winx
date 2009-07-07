//
// 7zdemo

#define INITGUID
#include <wrapper/7zip.h>
#include <stdio.h>
#include <windows.h>

// use another CLSIDs, if you want to support other formats (zip, rar, ...).
// {23170F69-40C1-278A-1000-000110070000}
DEFINE_GUID(CLSID_CFormat7z,
			0x23170F69, 0x40C1, 0x278A, 0x10, 0x00, 0x00, 0x01, 0x10, 0x07, 0x00, 0x00);

class CArchiveOpenCallback :
	public IArchiveOpenCallback //, public ICryptoGetTextPassword
{
public:
	// IUnknown
	STDMETHOD(QueryInterface)(REFIID iid, void** ppv) { return E_NOINTERFACE; }
	STDMETHOD_(ULONG, AddRef)() { return 2; }
	STDMETHOD_(ULONG, Release)() { return 1; }

	// IArchiveOpenCallback
	STDMETHOD(SetTotal)(const UInt64 *files, const UInt64 *bytes) { return S_OK; }
	STDMETHOD(SetCompleted)(const UInt64 *files, const UInt64 *bytes) { return S_OK; }
	
	// ICryptoGetTextPassword
	STDMETHOD(CryptoGetTextPassword)(BSTR *aPassword) { return E_ABORT; }
};

/*
class CArchiveExtractCallback :
	public IArchiveExtractCallback //, public ICryptoGetTextPassword
{
public:
	// IUnknown
	STDMETHOD(QueryInterface)(REFIID iid, void** ppv) { return E_NOINTERFACE; }
	STDMETHOD_(ULONG, AddRef)() { return 2; }
	STDMETHOD_(ULONG, Release)() { return 1; }

	// IProgress
	STDMETHOD(SetTotal)(UInt64 size) { return S_OK; }
	STDMETHOD(SetCompleted)(const UInt64 *completeValue) { return S_OK; }

	// ICryptoGetTextPassword
	STDMETHOD(CryptoGetTextPassword)(BSTR *aPassword) { return E_ABORT; }

	// IArchiveExtractCallback
	STDMETHOD(GetStream)(UInt32 index, ISequentialOutStream **outStream, Int32 askExtractMode);
	STDMETHOD(PrepareOperation)(Int32 askExtractMode);
	STDMETHOD(SetOperationResult)(Int32 resultEOperationResult);

private:
  IInArchive* _archiveHandler;
  UString _directoryPath;  // Output directory
  UString _filePath;       // name inside archive
  UString _diskFilePath;   // full path to file on disk
  bool _extractMode;
  struct CProcessedFileInfo
  {
    FILETIME MTime;
    UInt32 Attrib;
    bool isDir;
    bool AttribDefined;
    bool MTimeDefined;
  } _processedFileInfo;

  COutFileStream *_outFileStreamSpec;
  CMyComPtr<ISequentialOutStream> _outFileStream;

public:
  void Init(IInArchive *archiveHandler, const UString &directoryPath);
};

void CArchiveExtractCallback::Init(IInArchive *archiveHandler, const UString& directoryPath)
{
  NumErrors = 0;
  _archiveHandler = archiveHandler;
  _directoryPath = directoryPath;
  NFile::NName::NormalizeDirPathPrefix(_directoryPath);
}

STDMETHODIMP CArchiveExtractCallback::GetStream(UInt32 index,
    ISequentialOutStream **outStream, Int32 askExtractMode)
{
  *outStream = 0;
  _outFileStream.Release();

  {
    // Get Name
    NCOM::CPropVariant prop;
    RINOK(_archiveHandler->GetProperty(index, kpidPath, &prop));
    
    UString fullPath;
    if (prop.vt == VT_EMPTY)
      fullPath = kEmptyFileAlias;
    else
    {
      if (prop.vt != VT_BSTR)
        return E_FAIL;
      fullPath = prop.bstrVal;
    }
    _filePath = fullPath;
  }

  if (askExtractMode != NArchive::NExtract::NAskMode::kExtract)
    return S_OK;

  {
    // Get Attrib
    NCOM::CPropVariant prop;
    RINOK(_archiveHandler->GetProperty(index, kpidAttrib, &prop));
    if (prop.vt == VT_EMPTY)
    {
      _processedFileInfo.Attrib = 0;
      _processedFileInfo.AttribDefined = false;
    }
    else
    {
      if (prop.vt != VT_UI4)
        return E_FAIL;
      _processedFileInfo.Attrib = prop.ulVal;
      _processedFileInfo.AttribDefined = true;
    }
  }

  RINOK(IsArchiveItemFolder(_archiveHandler, index, _processedFileInfo.isDir));

  {
    // Get Modified Time
    NCOM::CPropVariant prop;
    RINOK(_archiveHandler->GetProperty(index, kpidMTime, &prop));
    _processedFileInfo.MTimeDefined = false;
    switch(prop.vt)
    {
      case VT_EMPTY:
        // _processedFileInfo.MTime = _utcMTimeDefault;
        break;
      case VT_FILETIME:
        _processedFileInfo.MTime = prop.filetime;
        _processedFileInfo.MTimeDefined = true;
        break;
      default:
        return E_FAIL;
    }

  }
  {
    // Get Size
    NCOM::CPropVariant prop;
    RINOK(_archiveHandler->GetProperty(index, kpidSize, &prop));
    bool newFileSizeDefined = (prop.vt != VT_EMPTY);
    UInt64 newFileSize;
    if (newFileSizeDefined)
      newFileSize = ConvertPropVariantToUInt64(prop);
  }

  
  {
    // Create folders for file
    int slashPos = _filePath.ReverseFind(WCHAR_PATH_SEPARATOR);
    if (slashPos >= 0)
      NFile::NDirectory::CreateComplexDirectory(_directoryPath + _filePath.Left(slashPos));
  }

  UString fullProcessedPath = _directoryPath + _filePath;
  _diskFilePath = fullProcessedPath;

  if (_processedFileInfo.isDir)
  {
    NFile::NDirectory::CreateComplexDirectory(fullProcessedPath);
  }
  else
  {
    NFile::NFind::CFileInfoW fi;
    if (fi.Find(fullProcessedPath))
    {
      if (!NFile::NDirectory::DeleteFileAlways(fullProcessedPath))
      {
        PrintString(UString(kCantDeleteOutputFile) + fullProcessedPath);
        return E_ABORT;
      }
    }
    
    _outFileStreamSpec = new COutFileStream;
    CMyComPtr<ISequentialOutStream> outStreamLoc(_outFileStreamSpec);
    if (!_outFileStreamSpec->Open(fullProcessedPath, CREATE_ALWAYS))
    {
      PrintString((UString)L"can not open output file " + fullProcessedPath);
      return E_ABORT;
    }
    _outFileStream = outStreamLoc;
    *outStream = outStreamLoc.Detach();
  }
  return S_OK;
}

STDMETHODIMP CArchiveExtractCallback::PrepareOperation(Int32 askExtractMode)
{
  _extractMode = false;
  switch (askExtractMode)
  {
    case NArchive::NExtract::NAskMode::kExtract:  _extractMode = true; break;
  };
  switch (askExtractMode)
  {
    case NArchive::NExtract::NAskMode::kExtract:  PrintString(kExtractingString); break;
    case NArchive::NExtract::NAskMode::kTest:  PrintString(kTestingString); break;
    case NArchive::NExtract::NAskMode::kSkip:  PrintString(kSkippingString); break;
  };
  PrintString(_filePath);
  return S_OK;
}

STDMETHODIMP CArchiveExtractCallback::SetOperationResult(Int32 operationResult)
{
  switch(operationResult)
  {
    case NArchive::NExtract::NOperationResult::kOK:
      break;
    default:
    {
      NumErrors++;
      PrintString("     ");
      switch(operationResult)
      {
        case NArchive::NExtract::NOperationResult::kUnSupportedMethod:
          PrintString(kUnsupportedMethod);
          break;
        case NArchive::NExtract::NOperationResult::kCRCError:
          PrintString(kCRCFailed);
          break;
        case NArchive::NExtract::NOperationResult::kDataError:
          PrintString(kDataError);
          break;
        default:
          PrintString(kUnknownError);
      }
    }
  }

  if (_outFileStream != NULL)
  {
    if (_processedFileInfo.MTimeDefined)
      _outFileStreamSpec->SetMTime(&_processedFileInfo.MTime);
    RINOK(_outFileStreamSpec->Close());
  }
  _outFileStream.Release();
  if (_extractMode && _processedFileInfo.AttribDefined)
    NFile::NDirectory::MySetFileAttributes(_diskFilePath, _processedFileInfo.Attrib);
  PrintNewLine();
  return S_OK;
}


STDMETHODIMP CArchiveExtractCallback::CryptoGetTextPassword(BSTR *password)
{
  if (!PasswordIsDefined)
  {
    // You can ask real password here from user
    // Password = GetPassword(OutStream);
    // PasswordIsDefined = true;
    PrintError("Password is not defined");
    return E_ABORT;
  }
  return StringToBstr(Password, password);
}

*/

UINT64 ToUInt64(const PROPVARIANT &prop)
{
	switch (prop.vt)
	{
	case VT_UI1: return prop.bVal;
	case VT_UI2: return prop.uiVal;
	case VT_UI4: return prop.ulVal;
	case VT_UI8: return (UINT64)prop.uhVal.QuadPart;
	default:	 return 0;
	}
}

int main()
{
	CArchiveOpenCallback callback;

	int result = -1;
    IInArchive* inArchive = NULL;
    if (NS7zip::CreateObject(&CLSID_CFormat7z, &IID_IInArchive, (void **)&inArchive) != S_OK)
    {
		printf("Can not get class object\n");
		return -1;
    }

	IInStream* inStm = NULL;
	if (NS7zip::CreateInFileStream(L"D:\\vml-6-24.7z", &inStm) != S_OK)
	{
		inArchive->Release();
		printf("Can not open inArchive file\n");
		goto Error;
	}

	if (inArchive->Open(inStm, 0, &callback) != S_OK)
	{
        printf("Can not open inArchive\n");
        goto Error;
	}
	{
		// List command
		UINT32 numItems = 0;
		inArchive->GetNumberOfItems(&numItems);
		for (UINT32 i = 0; i < numItems; i++)
		{
			UINT64 fileSize;
			{
				// Get uncompressed size of file
				PROPVARIANT prop;
				PropVariantInit(&prop);
				inArchive->GetProperty(i, kpidSize, &prop);
				fileSize = ToUInt64(prop);
			}
			{
				// Get name of file
				PROPVARIANT prop;
				PropVariantInit(&prop);
				inArchive->GetProperty(i, kpidPath, &prop);
				printf("%S: %I64d\n", prop.bstrVal, fileSize);
				PropVariantClear(&prop);
			}
		}
	}
Error:
	if (inStm)
		inStm->Release();
	inArchive->Release();
	return result;
}
