call d:\DEVPRG\hb64\hb64msys
call c:\DEVPRG\hb64\hb64msys_c.bat
SET HB_WITH_ADS=c:\harbour\hb3rd\acesdk-x64\
set CC=ccache gcc
set CXX=ccache g++
hbmk2.exe rddads.hbp 

