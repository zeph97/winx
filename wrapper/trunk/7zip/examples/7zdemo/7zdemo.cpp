//
// 7zdemo

#define INITGUID
#pragma warning(disable:4786)
#include <wrapper/7zip.h>
#include <stdio.h>
#include <windows.h>
#include <map>
#include <string>

// use another CLSIDs, if you want to support other formats (zip, rar, ...).
// {23170F69-40C1-278A-1000-000110070000}
DEFINE_GUID(CLSID_CFormat7z,
	0x23170F69, 0x40C1, 0x278A, 0x10, 0x00, 0x00, 0x01, 0x10, 0x07, 0x00, 0x00);

int main()
{
    NS7zip::InArchive ar(L"D:\\vml-6-24.7z", &CLSID_CFormat7z);
	if (!ar.good())
		return -1;

	typedef std::map<std::wstring, UINT32> ArchiveList;

	ArchiveList ns;
	ar.ListFiles(ns);
	for (ArchiveList::iterator it = ns.begin(); it != ns.end(); ++it)
		printf("%S\n", (*it).first.c_str());

	return 0;
}
