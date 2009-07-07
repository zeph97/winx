/* -------------------------------------------------------------------------
// WINX: a C++ template GUI library - MOST SIMPLE BUT EFFECTIVE
// 
// This file is a part of the WINX Library.
// The use and distribution terms for this software are covered by the
// Common Public License 1.0 (http://opensource.org/licenses/cpl.php)
// which can be found in the file CPL.txt at this distribution. By using
// this software in any fashion, you are agreeing to be bound by the terms
// of this license. You must not remove this notice, or any other, from
// this software.
// 
// Module: wrapper/7zip.h
// Creator: xushiwei
// Email: xushiweizh@gmail.com
// Date: 2009-7-2 23:57:09
// 
// $Id: 7zip.h,v 2009-7-2 23:57:09 xushiwei Exp $
// -----------------------------------------------------------------------*/
#ifndef WRAPPER_7ZIP_H
#define WRAPPER_7ZIP_H

// -------------------------------------------------------------------------

#ifndef __IARCHIVE_H
#include "7z/CPP/7zip/Archive/IArchive.h"
#endif

namespace NS7zip {

//
// Create Object Instance
//
STDAPI CreateObject(const GUID* clsID, const GUID* interfaceID, void** outObject);

//
// Create InFileStream
//
STDAPI CreateInFileStream(LPCWSTR szFile, IInStream** ppstm);

//
// Create InFileArchive
//
inline HRESULT CreateInFileArchive(
	LPCWSTR szFile, const GUID* clsID, IArchiveOpenCallback* callback, IInArchive** pinArchive)
{
    IInArchive* inArchive = NULL;
	HRESULT hr = CreateObject(clsID, &IID_IInArchive, (void **)&inArchive);
    if (hr != S_OK)
		return hr;
	
	IInStream* inStm = NULL;
	hr = NS7zip::CreateInFileStream(szFile, &inStm);
	if (hr != S_OK)
	{
		inArchive->Release();
		return hr;
	}
	
	hr = inArchive->Open(inStm, 0, callback);
	inStm->Release();
	if (hr != S_OK)
	{
		inArchive->Release();
		return hr;
	}
	*pinArchive = inArchive;
	return S_OK;
}

//
// class ArchiveOpenCallback
//
class ArchiveOpenCallback : public IArchiveOpenCallback
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

//
// Create InFileArchive
//
inline HRESULT CreateInFileArchive(
	LPCWSTR szFile, const GUID* clsID, IInArchive** pinArchive)
{
	ArchiveOpenCallback callback;
	return CreateInFileArchive(szFile, clsID, &callback, pinArchive);
}

//
// List Archive
//
template <class ArchiveListT>
inline void ListArchiveFiles(IInArchive* inArchive, ArchiveListT& ns)
{
	typedef typename ArchiveListT::value_type ItemT;

	UINT32 numItems = 0;
	inArchive->GetNumberOfItems(&numItems);
	for (UINT32 i = 0; i < numItems; i++)
	{
		PROPVARIANT prop;
		PropVariantInit(&prop);

		// Is directory?
		inArchive->GetProperty(i, kpidIsDir, &prop);
		if (prop.boolVal != VARIANT_FALSE)
			continue;

		// Get name of file
		if (inArchive->GetProperty(i, kpidPath, &prop) == S_OK)
		{
			ns.insert(ItemT(prop.bstrVal, i));
			PropVariantClear(&prop);
		}
	}
}

class InArchive
{
private:
	IInArchive* inArchive;

public:
	InArchive(LPCWSTR szFile, const GUID* clsID, IArchiveOpenCallback* callback)
	{
		inArchive = NULL;
		CreateInFileArchive(szFile, clsID, &inArchive);
	}

	InArchive(LPCWSTR szFile, const GUID* clsID)
	{
		inArchive = NULL;
		ArchiveOpenCallback callback;
		CreateInFileArchive(szFile, clsID, &callback, &inArchive);
	}

	~InArchive()
	{
		if (inArchive)
			inArchive->Release();
	}

	template <class ArchiveListT>
	void ListFiles(ArchiveListT& ns) {	ListArchiveFiles(inArchive, ns); }
	bool good() const { return inArchive != NULL; }
};

} // namespace

// -------------------------------------------------------------------------
// Link 7z.lib

#if !defined(Wrapper_Linked_7z)
#define Wrapper_Linked_7z
#pragma comment(lib, "7z")
#endif

// -------------------------------------------------------------------------

#endif /* WRAPPER_7ZIP_H */
