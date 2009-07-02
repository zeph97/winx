# Microsoft Developer Studio Project File - Name="pcrecpp" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=pcrecpp - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "pcrecpp.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "pcrecpp.mak" CFG="pcrecpp - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "pcrecpp - Win32 MinSizeRel" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "pcrecpp - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "pcrecpp - Win32 RelWithDebInfo" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "pcrecpp - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# ITK DSP Header file
# This file is read by the build system of itk, and is used as the top part of
# a microsoft project dsp header file
# IF this is in a dsp file, then it is not the header, but has
# already been used, so do not edit here...

# variables to REPLACE
# 
#  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre" == include path
#   == compiler defines
# C:\ebook-conv\wrapper\pcre\pcre-ext\build == override in output directory
# pcrecpp  == name of output library

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe
        
!IF  "$(CFG)" == "pcrecpp - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "C:\ebook-conv\wrapper\pcre\pcre-ext\build\Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /D "WIN32" /D "_WINDOWS" /D "_USRDLL" /D "pcrecpp_EXPORTS" /FD /c
# ADD CPP /nologo /D "WIN32" /D "_WINDOWS" /D "_USRDLL"  /FD /c
# ADD CPP  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre"   /D "pcrecpp_EXPORTS"
# ADD CPP  /DWIN32 /D_WINDOWS /W3 /Zm1000 /GX /GR /D "_MBCS"  -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD CPP /MD /O2 /Ob2 /D NDEBUG -DCMAKE_INTDIR=\"Release\"  
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre" /l 0x409 /d "NDEBUG"
# ADD RSC   -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD RSC  
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /dll /machine:I386
# ADD LINK32 /nologo /dll /version:0.0 /machine:I386 /out:"C:\ebook-conv\wrapper\pcre\pcre-ext\build\Release/pcrecpp.dll" /implib:C:\ebook-conv\wrapper\pcre\pcre-ext\build\Release\pcrecpp.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\Release\pcre.lib
# ADD LINK32  /STACK:10000000 /machine:I386 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib




!ELSEIF  "$(CFG)" == "pcrecpp - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "C:\ebook-conv\wrapper\pcre\pcre-ext\build\Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "pcrecpp_EXPORTS" /FD /c
# ADD CPP /nologo /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_USRDLL"  /FD /c
# ADD CPP  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre"    /D "pcrecpp_EXPORTS"
# ADD CPP  /DWIN32 /D_WINDOWS /W3 /Zm1000 /GX /GR /D "_MBCS"  -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD CPP /D_DEBUG /MDd /Zi  /Ob0 /Od /GZ -DCMAKE_INTDIR=\"Debug\"  
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre" /l 0x409 /d "_DEBUG"
# ADD RSC   -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD RSC  
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /dll /version:0.0 /debug /machine:I386 /out:"C:\ebook-conv\wrapper\pcre\pcre-ext\build\Debug/pcrecppd.dll" /pdbtype:sept /implib:C:\ebook-conv\wrapper\pcre\pcre-ext\build\Debug\pcrecppd.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\Debug\pcred.lib
# ADD LINK32  /STACK:10000000 /machine:I386 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib




!ELSEIF  "$(CFG)" == "pcrecpp - Win32 MinSizeRel"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "MinSizeRel"
# PROP BASE Intermediate_Dir "MinSizeRel"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "C:\ebook-conv\wrapper\pcre\pcre-ext\build\MinSizeRel"
# PROP Intermediate_Dir "MinSizeRel"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /D "WIN32"  /D "_WINDOWS" /D "_USRDLL" /FD /c  /D "pcrecpp_EXPORTS"
# SUBTRACT BASE CPP /YX
# ADD CPP /nologo /D "WIN32" /D "_WINDOWS" /D "_USRDLL"  /FD /c
# ADD CPP  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre"   /D "pcrecpp_EXPORTS"
# ADD CPP  /DWIN32 /D_WINDOWS /W3 /Zm1000 /GX /GR /D "_MBCS"  -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD CPP /MD /O1 /Ob1 /D NDEBUG -DCMAKE_INTDIR=\"MinSizeRel\"  
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre" /l 0x409 /d "NDEBUG"
# ADD RSC   -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD RSC  REL
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32  /nologo /dll /machine:I386 
# ADD LINK32 /nologo /dll /version:0.0 /machine:I386 /out:"C:\ebook-conv\wrapper\pcre\pcre-ext\build\MinSizeRel/pcrecpp.dll" /implib:C:\ebook-conv\wrapper\pcre\pcre-ext\build\MinSizeRel\pcrecpp.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\MinSizeRel\pcre.lib
# ADD LINK32  /STACK:10000000 /machine:I386 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib




!ELSEIF  "$(CFG)" == "pcrecpp - Win32 RelWithDebInfo"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "RelWithDebInfo"
# PROP BASE Intermediate_Dir "RelWithDebInfo"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0         
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "C:\ebook-conv\wrapper\pcre\pcre-ext\build\RelWithDebInfo"
# PROP Intermediate_Dir "RelWithDebInfo"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /D "WIN32" /D "_WINDOWS" /D "_USRDLL" /D "pcrecpp_EXPORTS" /FD /c
# ADD CPP /nologo /D "WIN32" /D "_WINDOWS" /D "_USRDLL"  /FD /c
# ADD CPP  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre"    /D "pcrecpp_EXPORTS"
# ADD CPP  /DWIN32 /D_WINDOWS /W3 /Zm1000 /GX /GR /D "_MBCS"  -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD CPP /MD /Zi /O2 /Ob1 /D NDEBUG -DCMAKE_INTDIR=\"RelWithDebInfo\"  
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre" /l 0x409 /d "NDEBUG"
# ADD RSC   -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD RSC  
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /dll /machine:I386 /pdbtype:sept
# ADD LINK32 /nologo /dll /version:0.0 /debug /machine:I386 /pdbtype:sept /out:"C:\ebook-conv\wrapper\pcre\pcre-ext\build\RelWithDebInfo/pcrecpp.dll" /implib:C:\ebook-conv\wrapper\pcre\pcre-ext\build\RelWithDebInfo\pcrecpp.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\RelWithDebInfo\pcre.lib
# ADD LINK32  /STACK:10000000 /machine:I386 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib




!ENDIF 

# Begin Target

# Name "pcrecpp - Win32 Release"
# Name "pcrecpp - Win32 Debug"
# Name "pcrecpp - Win32 MinSizeRel"
# Name "pcrecpp - Win32 RelWithDebInfo"
# Begin Source File

SOURCE=C:\ebook-conv\wrapper\pcre\pcre\CMakeLists.txt

!IF  "$(CFG)" == "pcrecpp - Win32 Release"
USERDEP__HACK=\
	C:\ebook-conv\wrapper\pcre\pcre\CMakeLists.txt\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Templates\CMakeVisualStudio6Configurations.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeSystem.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCCompiler.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCXXCompiler.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeSystemSpecificInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeGenericSystem.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\gcc.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\Windows.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\WindowsPaths.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\Windows-cl.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCPlatform.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCXXPlatform.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\cl.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Templates\CMakeVisualStudio6Configurations.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeRCCompiler.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeRCInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCommonLanguageInclude.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCXXInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCommonLanguageInclude.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\FindBZip2.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\FindZLIB.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindReadline.cmake\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFile.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFileCXX.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckFunctionExists.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckTypeSize.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFile.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\config-cmake.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcre.h.generic\
	C:\ebook-conv\wrapper\pcre\pcre\pcre_stringpiece.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcrecpparg.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcre_chartables.c.dist\
	C:\ebook-conv\wrapper\pcre\pcre\CMakeLists.txt
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Building Custom Rule C:/ebook-conv/wrapper/pcre/pcre/CMakeLists.txt

pcretest.dsp.cmake :  "$(SOURCE)" "$(INTDIR)" "$(OUTDIR)"
	"C:\Program Files\CMake 2.6\bin\cmake.exe" -HC:/ebook-conv/wrapper/pcre/pcre -BC:/ebook-conv/wrapper/pcre/pcre-ext/build

# End Custom Build

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 Debug"
USERDEP__HACK=\
	C:\ebook-conv\wrapper\pcre\pcre\CMakeLists.txt\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Templates\CMakeVisualStudio6Configurations.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeSystem.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCCompiler.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCXXCompiler.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeSystemSpecificInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeGenericSystem.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\gcc.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\Windows.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\WindowsPaths.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\Windows-cl.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCPlatform.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCXXPlatform.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\cl.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Templates\CMakeVisualStudio6Configurations.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeRCCompiler.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeRCInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCommonLanguageInclude.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCXXInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCommonLanguageInclude.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\FindBZip2.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\FindZLIB.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindReadline.cmake\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFile.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFileCXX.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckFunctionExists.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckTypeSize.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFile.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\config-cmake.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcre.h.generic\
	C:\ebook-conv\wrapper\pcre\pcre\pcre_stringpiece.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcrecpparg.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcre_chartables.c.dist\
	C:\ebook-conv\wrapper\pcre\pcre\CMakeLists.txt
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Building Custom Rule C:/ebook-conv/wrapper/pcre/pcre/CMakeLists.txt

pcretest.dsp.cmake :  "$(SOURCE)" "$(INTDIR)" "$(OUTDIR)"
	"C:\Program Files\CMake 2.6\bin\cmake.exe" -HC:/ebook-conv/wrapper/pcre/pcre -BC:/ebook-conv/wrapper/pcre/pcre-ext/build

# End Custom Build

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 MinSizeRel"
USERDEP__HACK=\
	C:\ebook-conv\wrapper\pcre\pcre\CMakeLists.txt\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Templates\CMakeVisualStudio6Configurations.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeSystem.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCCompiler.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCXXCompiler.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeSystemSpecificInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeGenericSystem.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\gcc.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\Windows.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\WindowsPaths.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\Windows-cl.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCPlatform.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCXXPlatform.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\cl.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Templates\CMakeVisualStudio6Configurations.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeRCCompiler.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeRCInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCommonLanguageInclude.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCXXInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCommonLanguageInclude.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\FindBZip2.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\FindZLIB.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindReadline.cmake\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFile.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFileCXX.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckFunctionExists.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckTypeSize.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFile.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\config-cmake.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcre.h.generic\
	C:\ebook-conv\wrapper\pcre\pcre\pcre_stringpiece.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcrecpparg.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcre_chartables.c.dist\
	C:\ebook-conv\wrapper\pcre\pcre\CMakeLists.txt
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Building Custom Rule C:/ebook-conv/wrapper/pcre/pcre/CMakeLists.txt

pcretest.dsp.cmake :  "$(SOURCE)" "$(INTDIR)" "$(OUTDIR)"
	"C:\Program Files\CMake 2.6\bin\cmake.exe" -HC:/ebook-conv/wrapper/pcre/pcre -BC:/ebook-conv/wrapper/pcre/pcre-ext/build

# End Custom Build

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 RelWithDebInfo"
USERDEP__HACK=\
	C:\ebook-conv\wrapper\pcre\pcre\CMakeLists.txt\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Templates\CMakeVisualStudio6Configurations.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeSystem.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCCompiler.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCXXCompiler.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeSystemSpecificInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeGenericSystem.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\gcc.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\Windows.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\WindowsPaths.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\Windows-cl.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCPlatform.cmake\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeCXXPlatform.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\Platform\cl.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Templates\CMakeVisualStudio6Configurations.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre-ext\build\CMakeFiles\CMakeRCCompiler.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeRCInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCommonLanguageInclude.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCXXInformation.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CMakeCommonLanguageInclude.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\FindBZip2.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\FindZLIB.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindReadline.cmake\
	C:\ebook-conv\wrapper\pcre\pcre\cmake\FindPackageHandleStandardArgs.cmake\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFile.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFileCXX.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckFunctionExists.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckTypeSize.cmake"\
	"C:\Program Files\CMake 2.6\share\cmake-2.6\Modules\CheckIncludeFile.cmake"\
	C:\ebook-conv\wrapper\pcre\pcre\config-cmake.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcre.h.generic\
	C:\ebook-conv\wrapper\pcre\pcre\pcre_stringpiece.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcrecpparg.h.in\
	C:\ebook-conv\wrapper\pcre\pcre\pcre_chartables.c.dist\
	C:\ebook-conv\wrapper\pcre\pcre\CMakeLists.txt
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Building Custom Rule C:/ebook-conv/wrapper/pcre/pcre/CMakeLists.txt

pcretest.dsp.cmake :  "$(SOURCE)" "$(INTDIR)" "$(OUTDIR)"
	"C:\Program Files\CMake 2.6\bin\cmake.exe" -HC:/ebook-conv/wrapper/pcre/pcre -BC:/ebook-conv/wrapper/pcre/pcre-ext/build

# End Custom Build

!ENDIF

# End Source File
# Begin Group "Source Files"
# PROP Default_Filter ""
# Begin Source File

SOURCE=C:\ebook-conv\wrapper\pcre\pcre\pcrecpp.cc

!IF  "$(CFG)" == "pcrecpp - Win32 Release"

# ADD CPP  /TP 

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 Debug"

# ADD CPP  /TP 

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 MinSizeRel"

# ADD CPP  /TP 

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 RelWithDebInfo"

# ADD CPP  /TP 

!ENDIF

# End Source File
# Begin Source File

SOURCE=C:\ebook-conv\wrapper\pcre\pcre\pcre_scanner.cc

!IF  "$(CFG)" == "pcrecpp - Win32 Release"

# ADD CPP  /TP 

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 Debug"

# ADD CPP  /TP 

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 MinSizeRel"

# ADD CPP  /TP 

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 RelWithDebInfo"

# ADD CPP  /TP 

!ENDIF

# End Source File
# Begin Source File

SOURCE=C:\ebook-conv\wrapper\pcre\pcre\pcre_stringpiece.cc

!IF  "$(CFG)" == "pcrecpp - Win32 Release"

# ADD CPP  /TP 

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 Debug"

# ADD CPP  /TP 

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 MinSizeRel"

# ADD CPP  /TP 

!ELSEIF  "$(CFG)" == "pcrecpp - Win32 RelWithDebInfo"

# ADD CPP  /TP 

!ENDIF

# End Source File
# End Group
# Begin Group "Header Files"
# PROP Default_Filter ""
# Begin Source File

SOURCE=C:\ebook-conv\wrapper\pcre\pcre\pcrecpp.h

# End Source File
# Begin Source File

SOURCE=C:\ebook-conv\wrapper\pcre\pcre\pcre_scanner.h

# End Source File
# Begin Source File

SOURCE=C:\ebook-conv\wrapper\pcre\pcre-ext\build\pcrecpparg.h

# End Source File
# Begin Source File

SOURCE=C:\ebook-conv\wrapper\pcre\pcre-ext\build\pcre_stringpiece.h

# End Source File
# End Group
# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
