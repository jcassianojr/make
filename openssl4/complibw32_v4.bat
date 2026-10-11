set HB_WITH_OPENSSL=c:\harbour\hb3rd\openssl_v4\include\
call c:\devprg\hb\hb32msys_C.bat
call D:\devprg\hb\hb32msys.bat
set CC=ccache gcc
set CXX=ccache g++

hbmk2.exe hbssl.hbp 
