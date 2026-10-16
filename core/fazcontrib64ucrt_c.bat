@echo off
SET HB_INSTALL_PREFIX=c:\hbcomp\hb64ucrt\
SET HB_WITH_ADS=c:\harbour\hb3rd\acesdk-ucrt-x64\
SET HB_WITH_ALLEGRO=c:\harbour\hb3rd\allegro-ucrt-x64\include\
SET HB_WITH_BLAT=c:\harbour\hb3rd\blat-ucrt-x64\
set HB_WITH_CAIRO=c:\harbour\hb3rd\cairo-ucrt-x64\include\cairo\
SET HB_WITH_CURL=c:\harbour\hb3rd\curl-ucrt-x64\include\
SET HB_WITH_FREEIMAGE=c:\harbour\hb3rd\FreeImage-ucrt-x64\include\
set HB_WITH_GS_BIN=c:\harbour\hb3rd\gscript-ucrt-x64\bin\
set HB_WITH_GS=c:\harbour\hb3rd\gscript-ucrt-x64\include\ghostscript\
SET HB_WITH_LIBHARU=c:\harbour\hb3rd\libharu-ucrt-x64\include\
set HB_WITH_LIBMAGIC=c:\harbour\hb3rd\magic-ucrt-x64\include\
SET HB_WITH_OPENSSL=c:\harbour\hb3rd\openssl-ucrt-x64\include
SET HB_WITH_RABBITMQ=c:\harbour\hb3rd\RABBITMQ-ucrt-x64\include\
SET HB_WITH_SSH2=c:\harbour\hb3rd\ssh2-ucrt-x64\include
set HB_WITH_OCIlib=c:\harbour\hb3rd\oci-ucrt-x64\include\
SET HB_WITH_GD=c:\harbour\hb3rd\gd-ucrt-x64\include\
rem vszakats
SET HB_WITH_ICU=c:\harbour\hb3rd\icu-ucrt-x64\include\
SET HB_WITH_AMQP=c:\harbour\hb3rd\amqp-ucrt-x64\include\
SET HB_WITH_CRYPTO=c:\harbour\hb3rd\crypto-ucrt-x64\include\
SET HB_WITH_EXPAT=c:\harbour\hb3rd\expat-ucrt-x64\include\
SET HB_WITH_ZLIB=c:\harbour\hb3rd\zlib-ucrt-x64\include\
SET HB_WITH_BZ2=c:\harbour\hb3rd\bzip2-ucrt-x64\include\
SET HB_WITH_LIBXLSXWRITER=c:\harbour\hb3rd\libxlsxwriter-ucrt-x64\include\
SET HB_WITH_YAML=c:\harbour\hb3rd\yaml-ucrt-x64\include\
SET HB_WITH_SQLITE3=c:\harbour\hb3rd\sqlite-ucrt-x64\include\

SET HB_STATIC_CURL=yes
SET HB_STATIC_OPENSSL=yes
set HB_BUILD_CONTRIB_DYN=no
set HB_BUILD_DYN=no
set HB_BUILD_SHARED=no

call hb64ucrt_c.bat
cd contrib
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  gtalleg\gtalleg @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  gtqtc\gtqtc @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  gtwvg\gtwvg @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbamf\hbamf @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbblat\hbblat @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbblink\hbblink @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbbz2\hbbz2 @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbbz2io\hbbz2io @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbcairo\hbcairo @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbcomio\hbcomio @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbct\hbct @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbcurl\hbcurl @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbdoc\hbdoc @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbexpat\hbexpat @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbfimage\hbfimage @hbpost
rem hbmk2[hbfimage]: Warning: No import library sources were found.
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbfoxpro\hbfoxpro @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbfship\hbfship @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbgd\hbgd  @hbpost
rem hbmk2[hbgd]: Warning: No import library sources were found.
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbgs\hbgs @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbgt\hbgt @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbgzio\hbgzio @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbhpdf\hbhpdf @hbpost
rem hbmk2[hbhpdf]: Warning: No import library sources were found.
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbhttpd\hbhttpd @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbmagic\hbmagic @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbmemio\hbmemio @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbmisc\hbmisc @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbmlzo\hbmlzo @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbmxml\hbmxml @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbmzip\hbmzip @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbnetio\hbnetio @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbnf\hbnf @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbodbc\hbodbc @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hboslib\hboslib @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbpipeio\hbpipeio @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbssl\hbssl @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbtinymt\hbtinymt @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbtip\hbtip @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbwin\hbwin @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbxpp\hbxpp @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbyaml\hbyaml @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbzebra\hbzebra @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbziparc\hbziparc @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  rddads\rddads @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  rddbm\rddbm @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  rddmisc\rddmisc @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  rddsql\rddsql @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sddoci\sddoci @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sddodbc\sddodbc @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sddsqlt3\sddsqlt3 @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  xhb\xhb @hbpost
rem extras
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  rddado\rddado @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbxlsxml\hbxlsxml @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbvpdf\hbvpdf @hbpost
rem vszakats
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbamqp\hbamqp @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbcrypto\hbcrypto @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbicu\hbicu  @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbyaml\hbyaml @hbpost

rem outros
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sefazclass\sefazclass @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sqlrddpp\sqlrddpp  @hbpost
rem warnings de compilacao
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  superlib\superlib
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  gas4harbour\gas4harbour 
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  wvwclip\wvwclip
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  cacherdd\cacherdd
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hblibxlsxwriter\hblibxlsxwriter
rem warnings de compilacao
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbxlsxwriter\hbxlsxwriter

rem em desenvolvimento no repo
SET HB_WITH_ADS=c:\harbour\hb3rd\aceopenads-ucrt-x64\
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  rddadsopen\rddads  @hbpost

rem === CONFIGURACOES GERAIS DOS BANCOS ===
set HB_PLATFORM=win
set HB_COMPILER=mingw64
rem Forca o Harbour a usar o modelo de threads correto do MSYS2 UCRT64
set HB_WITH_PTHREADS=yes
set HB_BUILD_SHARED=yes

rem === MYSQL ===
Set HB_STATIC_MYSQL=no
set HB_USER_LDFLAGS=-static-libgcc -static-libstdc++
set HB_WITH_MYSQL=c:\harbour\hb3rd\mysql-ucrt-x64\include\
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sddmy\sddmy @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbmysql\hbmysql @hbpost

rem === PGSQL ===
set HB_STATIC_PGSQL=no
set HB_WITH_PGSQL=c:\harbour\hb3rd\pgsql-ucrt-x64\include\
set HB_USER_LDFLAGS=-static-libgcc -static-libstdc++ -lintl -liconv -lws2_32 -lsecur32
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbpgsql\hbpgsql @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sddpg\sddpg @hbpost

rem === FIREBIRD ===
set HB_STATIC_FBIRD=no
set HB_WITH_FIREBIRD=C:\harbour\hb3rd\firebird-ucrt-x64\include\
set HB_USER_LDFLAGS=-static-libgcc -static-libstdc++
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbfbird\hbfbird @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc sddfb\sddfb @hbpost