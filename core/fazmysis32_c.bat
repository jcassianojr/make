SET HB_INSTALL_PREFIX=c:\hbcomp\hb32\
SET HB_WITH_ADS=c:\harbour\hb3rd\acesdk\
set HB_WITH_FIREBIRD=c:\harbour\hb3rd\firebird\include\
set HB_WITH_MYSQL=c:\harbour\hb3rd\mysql\include\
set HB_WITH_OCIlib=c:\harbour\hb3rd\oci\include\
set HB_WITH_PGSQL=c:\harbour\hb3rd\pgsql\include\
rem SET HB_USER_CFLAGS=-DHB_SQLT3_MAP_DECLARED_EMULATED

set CC=ccache gcc
set CXX=ccache g++

SET HB_STATIC_CURL=yes
SET HB_STATIC_OPENSSL=yes
set HB_BUILD_CONTRIB_DYN=no
set HB_BUILD_DYN=no
set HB_BUILD_SHARED=no
SET HB_BUILD_STRIP=all

call hb32mysis_c
win-make install -k
