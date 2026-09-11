call \devprg\hb\hb32msys.bat
call \devprg\hb\hb32msys_c.bat
SET CC=ccache gcc
SET CXX=ccache g++
rem SET HB_INSTALL_PREFIX=c:\harbour\LetoDBf\hb32\
rem hbmk2 apileto.hbp
rem hbmk2 letodb.hbp
rem hbmk2 letodbaddon.hbp
hbmk2 letodbsvc.hbp
rem hbmk2 rddleto.hbp
hbmk2 rddletoelch.hbp
rem hbmk2 rddletoaddon.hbp

