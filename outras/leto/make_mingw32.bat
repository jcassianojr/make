@echo off
call \devprg\hb\hb32msys.bat
call \devprg\hb\hb32msys_c.bat
REM SET HB_INSTALL_PREFIX=c:\harbour\LetoDBf\hb32\
SET CC=ccache gcc
SET CXX=ccache g++
if "%1" == "clean" goto CLEAN
if "%1" == "CLEAN" goto CLEAN

:BUILD

if not exist lib md lib
if not exist obj md obj
if not exist obj\w32 md obj\w32

   rem set _SQLIDYN=On
   mingw32-make.exe -f makefile.gcc >make_mingw.log 2>make_mingw_err.log
   if errorlevel 1 goto BUILD_ERR

:BUILD_OK

   goto EXIT

:BUILD_ERR

   goto EXIT

:CLEAN
   del lib\*.a
   del obj\w32\*.c
   del obj\w32\*.o

   goto EXIT

:EXIT