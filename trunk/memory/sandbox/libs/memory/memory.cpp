// memory.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"

#if defined(X_OS_WINDOWS)

BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
    return TRUE;
}

#endif
