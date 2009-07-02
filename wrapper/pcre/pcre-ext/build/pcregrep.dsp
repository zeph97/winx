# Microsoft Developer Studio Project File - Name="pcbuilder" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# CM DSP Header file
# This file is read by the build system of cm, and is used as the top part of
# a microsoft project dsp header file
# IF this is in a dsp file, then it is not the header, but has
# already been used, so do not edit here...

# variables to REPLACE
# 
#  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre" == include path
# C:\ebook-conv\wrapper\pcre\pcre-ext\build == override in output directory
#   == compiler defines
# pcregrep  == name of output library
#  pcreposix.lib pcre.lib  /STACK:10000000 /machine:I386 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  == libraries linked in 
# TARGTYPE "Win32 (x86) Application" 0x0103

CFG=pcregrep - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "pcregrep.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "pcregrep.mak" CFG="pcregrep - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "pcregrep - Win32 MinSizeRel" (based on "Win32 (x86) Application")
!MESSAGE "pcregrep - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "pcregrep - Win32 RelWithDebInfo" (based on "Win32 (x86) Application")
!MESSAGE "pcregrep - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "pcregrep - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "C:\ebook-conv\wrapper\pcre\pcre-ext\build\Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo  /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /FD /c
# ADD CPP /nologo  /D "WIN32"  /D "NDEBUG" /D "_CONSOLE" /FD /c
# ADD CPP  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre"   
# ADD CPP  /DWIN32 /D_WINDOWS /W3 /Zm1000 /D "_MBCS"  -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD CPP /MD /O2 /Ob2 /D NDEBUG -DCMAKE_INTDIR=\"Release\"  
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre" /l 0x409 /d "NDEBUG"
# ADD RSC   -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD RSC  
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32  /nologo /subsystem:console /machine:I386 /IGNORE:4089
# ADD LINK32  /nologo /subsystem:console /machine:I386 /IGNORE:4089 /version:0.0
# ADD LINK32 /out:"C:\ebook-conv\wrapper\pcre\pcre-ext\build\Release\pcregrep.exe" /implib:C:\ebook-conv\wrapper\pcre\pcre-ext\build\Release\pcregrep.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\Release\pcreposix.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\Release\pcre.lib
# ADD LINK32  /STACK:10000000 /machine:I386 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib




!ELSEIF  "$(CFG)" == "pcregrep - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "C:\ebook-conv\wrapper\pcre\pcre-ext\build\Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP   /D "WIN32" /D "_DEBUG" /D "_CONSOLE"  /FD /GZ /c
# ADD CPP /nologo  /D "WIN32"  /D "_DEBUG" /D "_CONSOLE" /FD /GZ /c
# ADD CPP  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre"   
# ADD CPP  /DWIN32 /D_WINDOWS /W3 /Zm1000 /D "_MBCS"  -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD CPP /D_DEBUG /MDd /Zi /Ob0 /Od /GZ -DCMAKE_INTDIR=\"Debug\"  
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
# ADD BASE LINK32  /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept /IGNORE:4089
# ADD LINK32 /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept /IGNORE:4089 /version:0.0
# ADD LINK32 /out:"C:\ebook-conv\wrapper\pcre\pcre-ext\build\Debug\pcregrep.exe" /implib:C:\ebook-conv\wrapper\pcre\pcre-ext\build\Debug\pcregrep.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\Debug\pcreposixd.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\Debug\pcred.lib
# ADD LINK32  /STACK:10000000 /machine:I386 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib




!ELSEIF  "$(CFG)" == "pcregrep - Win32 MinSizeRel"
# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "MinSizeRel"
# PROP BASE Intermediate_Dir "MinSizeRel"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "C:\ebook-conv\wrapper\pcre\pcre-ext\build\MinSizeRel"
# PROP Intermediate_Dir "MinSizeRel"
# PROP Target_Dir ""
# ADD BASE CPP /nologo  /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /FD /c
# ADD CPP /nologo  /D "WIN32"  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre"   /D "NDEBUG" /D "_CONSOLE"  /FD /c
# ADD CPP  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre"   
# ADD CPP  /DWIN32 /D_WINDOWS /W3 /Zm1000 /D "_MBCS"  -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD CPP /MD /O1 /Ob1 /D NDEBUG -DCMAKE_INTDIR=\"MinSizeRel\"  
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre" /l 0x409 /d "NDEBUG"
# ADD RSC   -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD RSC  REL
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:console /machine:I386 /IGNORE:4089
# ADD LINK32 /nologo /subsystem:console /machine:I386 /IGNORE:4089 /version:0.0
# ADD LINK32 /out:"C:\ebook-conv\wrapper\pcre\pcre-ext\build\MinSizeRel\pcregrep.exe" /implib:C:\ebook-conv\wrapper\pcre\pcre-ext\build\MinSizeRel\pcregrep.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\MinSizeRel\pcreposix.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\MinSizeRel\pcre.lib
# ADD LINK32  /STACK:10000000 /machine:I386 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib




!ELSEIF  "$(CFG)" == "pcregrep - Win32 RelWithDebInfo"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "RelWithDebInfo"
# PROP BASE Intermediate_Dir "RelWithDebInfo"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "C:\ebook-conv\wrapper\pcre\pcre-ext\build\RelWithDebInfo"
# PROP Intermediate_Dir "RelWithDebInfo"
# PROP Target_Dir ""
# ADD BASE CPP /nologo  /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /FD /c
# ADD CPP /nologo  /D "WIN32"  /D "NDEBUG" /D "_CONSOLE" /FD /c
# ADD CPP  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre"   
# ADD CPP  /DWIN32 /D_WINDOWS /W3 /Zm1000 /D "_MBCS"  -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD CPP /MD /Zi /O2 /Ob1 /D NDEBUG -DCMAKE_INTDIR=\"RelWithDebInfo\"  
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC  /I "C:\ebook-conv\wrapper\pcre\pcre-ext\build" /I "C:\ebook-conv\wrapper\pcre\pcre" /l 0x409 /d "NDEBUG"
# ADD RSC   -DHAVE_CONFIG_H -D_CRT_SECURE_NO_DEPRECATE
# ADD RSC  
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:console /debug /machine:I386 /IGNORE:4089
# ADD LINK32  /nologo /subsystem:console /debug /machine:I386 /IGNORE:4089 /version:0.0
# ADD LINK32 /out:"C:\ebook-conv\wrapper\pcre\pcre-ext\build\RelWithDebInfo\pcregrep.exe" /implib:C:\ebook-conv\wrapper\pcre\pcre-ext\build\RelWithDebInfo\pcregrep.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\RelWithDebInfo\pcreposix.lib
# ADD LINK32 C:\ebook-conv\wrapper\pcre\pcre-ext\build\RelWithDebInfo\pcre.lib
# ADD LINK32  /STACK:10000000 /machine:I386 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib




!ENDIF 

# Begin Target

# Name "pcregrep - Win32 Release"
# Name "pcregrep - Win32 Debug"
# Name "pcregrep - Win32 MinSizeRel"
# Name "pcregrep - Win32 RelWithDebInfo"
# Begin Source File

SOURCE=C:\ebook-conv\wrapper\pcre\pcre\CMakeLists.txt

!IF  "$(CFG)" == "pcregrep - Win32 Release"
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

!ELSEIF  "$(CFG)" == "pcregrep - Win32 Debug"
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

!ELSEIF  "$(CFG)" == "pcregrep - Win32 MinSizeRel"
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

!ELSEIF  "$(CFG)" == "pcregrep - Win32 RelWithDebInfo"
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

SOURCE=C:\ebook-conv\wrapper\pcre\pcre\pcregrep.c

!IF  "$(CFG)" == "pcregrep - Win32 Release"

# ADD CPP  /TC 

!ELSEIF  "$(CFG)" == "pcregrep - Win32 Debug"

# ADD CPP  /TC 

!ELSEIF  "$(CFG)" == "pcregrep - Win32 MinSizeRel"

# ADD CPP  /TC 

!ELSEIF  "$(CFG)" == "pcregrep - Win32 RelWithDebInfo"

# ADD CPP  /TC 

!ENDIF

# End Source File
# End Group
# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
