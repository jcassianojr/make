call d:\devprg\hb64\hb64msys.bat
call c:\devprg\hb64\hb64msys_C.bat
SET CC=ccache gcc
SET CXX=ccache g++
rem SET HB_INSTALL_PREFIX=c:\harbour\LetoDBf\hb64\
rem hbmk2 apileto.hbp
rem hbmk2 letodb.hbp
rem hbmk2 letodbaddon.hbp
hbmk2 letodbsvc.hbp
rem hbmk2 rddleto.hbp
rem hbmk2 rddletoaddon.hbp
hbmk2 rddletoelch.hbp

