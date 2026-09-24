rem SET HB_INSTALL_PREFIX=d:\hbcomp\
call d:\DEVPRG\hb\hb64msys
call c:\DEVPRG\hb64\hb64msys_c.bat
SET HB_WITH_ADS=c:\harbour\hb3rd\aceopenads-x64\
rem set OPENADS_LIB=C:\OpenADS\build\msvc-x64\src\Release
set CC=ccache gcc
set CXX=ccache g++
hbmk2.exe rddadsopen.hbp 

