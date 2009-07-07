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
	HRESULT hr = NS7zip::CreateObject(clsID, &IID_IInArchive, (void **)&inArchive);
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

} // namespace

// -------------------------------------------------------------------------
// Link 7z.lib

#if !defined(Wrapper_Linked_7z)
#define Wrapper_Linked_7z
#pragma comment(lib, "7z")
#endif

// -------------------------------------------------------------------------

#endif /* WRAPPER_7ZIP_H */
