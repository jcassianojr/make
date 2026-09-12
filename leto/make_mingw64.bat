@echo off
call d:\devprg\hb64\hb64msys.bat
call c:\devprg\hb64\hb64msys_C.bat

if "%1" == "clean" goto CLEAN
if "%1" == "CLEAN" goto CLEAN

:BUILD

if not exist lib md lib
if not exist obj md obj
if not exist obj\w64 md obj\w64

   rem set _SQLIDYN=On
   mingw32-make.exe -f makefile.gcc >make_mingw.log 2>make_mingw_err.log
   if errorlevel 1 goto BUILD_ERR

:BUILD_OK

   goto EXIT

:BUILD_ERR

   goto EXIT

:CLEAN
   del lib\*.a
   del obj\w64\*.c
   del obj\w64\*.o

   goto EXIT

:EXIT