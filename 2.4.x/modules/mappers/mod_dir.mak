# Microsoft Developer Studio Generated NMAKE File, Based on mod_dir.dsp
!IF "$(CFG)" == ""
CFG=mod_dir - Win32 Release
!MESSAGE No configuration specified. Defaulting to mod_dir - Win32 Release.
!ENDIF 

!IF "$(CFG)" != "mod_dir - Win32 Release" && "$(CFG)" != "mod_dir - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_dir.mak" CFG="mod_dir - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_dir - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_dir - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mod_dir - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_dir.so"

!ELSE 

ALL : "libhttpd - Win32 Release" "libaprutil - Win32 Release" "libapr - Win32 Release" "$(OUTDIR)\mod_dir.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libapr - Win32 ReleaseCLEAN" "libaprutil - Win32 ReleaseCLEAN" "libhttpd - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_dir.obj"
	-@erase "$(INTDIR)\mod_dir.res"
	-@erase "$(INTDIR)\mod_dir_src.idb"
	-@erase "$(INTDIR)\mod_dir_src.pdb"
	-@erase "$(OUTDIR)\mod_dir.exp"
	-@erase "$(OUTDIR)\mod_dir.lib"
	-@erase "$(OUTDIR)\mod_dir.pdb"
	-@erase "$(OUTDIR)\mod_dir.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_dir_src" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_dir.res" /i "../../include" /i "../../srclib/apr/include" /d "NDEBUG" /d BIN_NAME="mod_dir.so" /d LONG_NAME="dir_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_dir.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_dir.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_dir.so" /implib:"$(OUTDIR)\mod_dir.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_dir.so /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\mod_dir.obj" \
	"$(INTDIR)\mod_dir.res" \
	"..\..\srclib\apr\Release\libapr-1.lib" \
	"..\..\srclib\apr-util\Release\libaprutil-1.lib" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_dir.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\mod_dir.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Release" "libaprutil - Win32 Release" "libapr - Win32 Release" "$(OUTDIR)\mod_dir.so"
   if exist .\Release\mod_dir.so.manifest mt.exe -manifest .\Release\mod_dir.so.manifest -outputresource:.\Release\mod_dir.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "mod_dir - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_dir.so"

!ELSE 

ALL : "libhttpd - Win32 Debug" "libaprutil - Win32 Debug" "libapr - Win32 Debug" "$(OUTDIR)\mod_dir.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libapr - Win32 DebugCLEAN" "libaprutil - Win32 DebugCLEAN" "libhttpd - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_dir.obj"
	-@erase "$(INTDIR)\mod_dir.res"
	-@erase "$(INTDIR)\mod_dir_src.idb"
	-@erase "$(INTDIR)\mod_dir_src.pdb"
	-@erase "$(OUTDIR)\mod_dir.exp"
	-@erase "$(OUTDIR)\mod_dir.lib"
	-@erase "$(OUTDIR)\mod_dir.pdb"
	-@erase "$(OUTDIR)\mod_dir.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_dir_src" /FD /EHsc /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_dir.res" /i "../../include" /i "../../srclib/apr/include" /d "_DEBUG" /d BIN_NAME="mod_dir.so" /d LONG_NAME="dir_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_dir.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_dir.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_dir.so" /implib:"$(OUTDIR)\mod_dir.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_dir.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_dir.obj" \
	"$(INTDIR)\mod_dir.res" \
	"..\..\srclib\apr\Debug\libapr-1.lib" \
	"..\..\srclib\apr-util\Debug\libaprutil-1.lib" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_dir.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\mod_dir.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Debug" "libaprutil - Win32 Debug" "libapr - Win32 Debug" "$(OUTDIR)\mod_dir.so"
   if exist .\Debug\mod_dir.so.manifest mt.exe -manifest .\Debug\mod_dir.so.manifest -outputresource:.\Debug\mod_dir.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_dir.dep")
!INCLUDE "mod_dir.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_dir.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mod_dir - Win32 Release" || "$(CFG)" == "mod_dir - Win32 Debug"

!IF  "$(CFG)" == "mod_dir - Win32 Release"

"libapr - Win32 Release" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Release" 
   cd "..\..\modules\mappers"

"libapr - Win32 ReleaseCLEAN" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Release" RECURSE=1 CLEAN 
   cd "..\..\modules\mappers"

!ELSEIF  "$(CFG)" == "mod_dir - Win32 Debug"

"libapr - Win32 Debug" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Debug" 
   cd "..\..\modules\mappers"

"libapr - Win32 DebugCLEAN" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\..\modules\mappers"

!ENDIF 

!IF  "$(CFG)" == "mod_dir - Win32 Release"

"libaprutil - Win32 Release" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Release" 
   cd "..\..\modules\mappers"

"libaprutil - Win32 ReleaseCLEAN" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Release" RECURSE=1 CLEAN 
   cd "..\..\modules\mappers"

!ELSEIF  "$(CFG)" == "mod_dir - Win32 Debug"

"libaprutil - Win32 Debug" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Debug" 
   cd "..\..\modules\mappers"

"libaprutil - Win32 DebugCLEAN" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\..\modules\mappers"

!ENDIF 

!IF  "$(CFG)" == "mod_dir - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Release" 
   cd ".\modules\mappers"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\mappers"

!ELSEIF  "$(CFG)" == "mod_dir - Win32 Debug"

"libhttpd - Win32 Debug" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Debug" 
   cd ".\modules\mappers"

"libhttpd - Win32 DebugCLEAN" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd ".\modules\mappers"

!ENDIF 

SOURCE=..\..\build\win32\httpd.rc

!IF  "$(CFG)" == "mod_dir - Win32 Release"


"$(INTDIR)\mod_dir.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_dir.res" /i "../../include" /i "../../srclib/apr/include" /i "$(SRCROOT)\build\win32" /d "NDEBUG" /d BIN_NAME="mod_dir.so" /d LONG_NAME="dir_module for Apache" $(SOURCE)


!ELSEIF  "$(CFG)" == "mod_dir - Win32 Debug"


"$(INTDIR)\mod_dir.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_dir.res" /i "../../include" /i "../../srclib/apr/include" /i "$(SRCROOT)\build\win32" /d "_DEBUG" /d BIN_NAME="mod_dir.so" /d LONG_NAME="dir_module for Apache" $(SOURCE)


!ENDIF 

SOURCE=.\mod_dir.c

"$(INTDIR)\mod_dir.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

