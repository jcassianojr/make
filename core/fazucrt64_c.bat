@echo off
SET HB_INSTALL_PREFIX=c:\hbcomp\hb64ucrt\
SET HB_WITH_ADS=c:\harbour\hb3rd\acesdk-ucrt-x64\

set HB_WITH_FIREBIRD=c:\harbour\hb3rd\firebird-ucrt-x64\include\
set HB_WITH_MYSQL=c:\harbour\hb3rd\mysql-ucrt-x64\include\
set HB_WITH_PGSQL=c:\harbour\hb3rd\pgsql-ucrt-x64\include\
set hB_WITH_OCIlib=c:\harbour\hb3rd\oci-ucrt-x64\include\
SET HB_STATIC_CURL=yes
SET HB_STATIC_OPENSSL=yes
set HB_BUILD_CONTRIB_DYN=no
set HB_BUILD_DYN=no
set HB_BUILD_SHARED=no
SET HB_BUILD_STRIP=all

call hb64ucrt_c.bat
win-make install -k