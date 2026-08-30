SET HB_INSTALL_PREFIX=c:\hbcomp\hb64\
SET HB_WITH_ADS=c:\harbour\hb3rd\acesdk-x64\

set HB_WITH_FIREBIRD=c:\harbour\hb3rd\firebird-x64\include\
set HB_WITH_MYSQL=c:\harbour\hb3rd\mysql-x64\include\
set HB_WITH_PGSQL=c:\harbour\hb3rd\pgsql-x64\include\
set hB_WITH_OCIlib=c:\harbour\hb3rd\oci-x64\include\
SET HB_STATIC_CURL=yes
SET HB_STATIC_OPENSSL=yes
set HB_BUILD_CONTRIB_DYN=no
set HB_BUILD_DYN=no
set HB_BUILD_SHARED=no
SET HB_BUILD_STRIP=all
SET HB_USER_CFLAGS=-DHB_SQLT3_MAP_DECLARED_EMULATED

set CC=ccache gcc
set CXX=ccache g++

rem set PATH=c:\harbour\comp\mingw64\bin\;c:\harbour\BIN\;%PATH% abaixo com o call
call hb64mysis_c.bat
win-make install -k

rem 
REM deixando aqui como referencia win-make install e migw32-make sao equivalentes 
rem mingw32-make install
rem -o${hb_lib}/${hb_plat}/${hb_comp}/${hb_name}
rem copiando ate checar os makes gravar local correto
rem nao usar move para utilizar a criacao dinamica quando necessario


