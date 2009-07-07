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
	STDMETHOD(QueryInterface)(REFIID iid, void** ppv) { return E_NOINTERFACE; }
	STDMETHOD_(ULONG, AddRef)() { return 2; }
	STDMETHOD_(ULONG, Release)() { return 1; }

	STDMETHOD(SetTotal)(const UInt64 *files, const UInt64 *bytes) { return S_OK; }
	STDMETHOD(SetCompleted)(const UInt64 *files, const UInt64 *bytes) { return S_OK; }
	STDMETHOD(CryptoGetTextPassword)(BSTR *password) { return E_ABORT; }
};

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
