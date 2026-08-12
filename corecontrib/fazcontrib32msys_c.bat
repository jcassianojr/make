@echo off
SET HB_INSTALL_PREFIX=c:\hbcomp\hb32\

SET HB_WITH_ADS=c:\harbour\hb3rd\acesdk\
SET HB_WITH_ALLEGRO=c:\harbour\hb3rd\allegro\include\
SET HB_WITH_BLAT=c:\harbour\hb3rd\blat\
set HB_WITH_CAIRO=c:\harbour\hb3rd\cairo\include\cairo\
SET HB_WITH_CURL=c:\harbour\hb3rd\curl\include\
set HB_WITH_FIREBIRD=c:\harbour\hb3rd\firebird\include\
SET HB_WITH_FREEIMAGE=c:\harbour\hb3rd\FreeImage\include\
set HB_WITH_GS_BIN=c:\harbour\hb3rd\gscript\\bin\
set HB_WITH_GS=c:\harbour\hb3rd\gscript\include\ghostscript\
SET HB_WITH_LIBHARU=c:\harbour\hb3rd\libharu\include\
set HB_WITH_OCIlib=c:\harbour\hb3rd\oci\include\
set HB_WITH_OPENSSL=c:\harbour\hb3rd\openssl\include\
SET HB_WITH_RABBITMQ=c:\harbour\hb3rd\RABBITMQ\include\
SET HB_WITH_SSH2=c:\harbour\hb3rd\ssh2\include\
rem vszakats
SET HB_WITH_ICU=c:\harbour\hb3rd\icu\include\
SET HB_WITH_AMQP=d:\harbour\hb3rd\amqp\include\
SET HB_WITH_CRYPTO=d:\harbour\hb3rd\crypto\include\

SET HB_WITH_EXPAT=d:\harbour\hb3rd\expat\include\
SET HB_WITH_ZLIB=d:\harbour\hb3rd\zlib\include\
SET HB_WITH_BZ2=d:\harbour\hb3rd\bzip2\include\
SET HB_WITH_LIBXLSXWRITER=d:\harbour\hb3rd\libxlsxwriter\include\
SET HB_WITH_YAML=d:\harbour\hb3rd\yaml\include\
SET HB_WITH_SQLITE3=d:\harbour\hb3rd\sqlite\include\


SET HB_STATIC_CURL=yes
SET HB_STATIC_OPENSSL=yes
set HB_BUILD_CONTRIB_DYN=no
set HB_BUILD_DYN=no
set HB_BUILD_SHARED=no


call hb32mysis_c.bat


SET CC=ccache gcc
SET CXX=ccache g++

cd contrib
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc gtalleg\gtalleg @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc gtqtc\gtqtc @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc gtwvg\gtwvg @hbpost
rem hbmk2 -quiet -width=0 -autohbm- @hbpre -inc gtwvw\gtwvw @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbamf\hbamf @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbblat\hbblat @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbblink\hbblink @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbbz2\hbbz2 @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbbz2io\hbbz2io @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbcairo\hbcairo @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbcomio\hbcomio @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbct\hbct @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbcurl\hbcurl @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbdoc\hbdoc @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbexpat\hbexpat @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbfbird\hbfbird @hbpost
rem usando hmg rem hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbfimage\hbfimage @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbfoxpro\hbfoxpro @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbfship\hbfship @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbgd\hbgd  @hbpost
rem hbmk2[hbgd]: Atenção: Faltando a dependência: gd
rem hbmk2[hbgd]: Exit status: 10: dependência não encontrada ou desativada
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbgs\hbgs @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbgt\hbgt @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbgzio\hbgzio @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbhpdf\hbhpdf @hbpost
rem hbmk2[hbhpdf]: Atenção: Não foram encontrados fontes para biblioteca de importação.
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbhttpd\hbhttpd @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbmagic\hbmagic @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbmemio\hbmemio @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbmisc\hbmisc @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbmlzo\hbmlzo @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbmxml\hbmxml @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbmzip\hbmzip @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbnetio\hbnetio @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbnf\hbnf @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbodbc\hbodbc @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hboslib\hboslib @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbssl\hbssl @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbpipeio\hbpipeio @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbtinymt\hbtinymt @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbtip\hbtip @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbwin\hbwin @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbxpp\hbxpp @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbyaml\hbyaml @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbzebra\hbzebra @hbpost
rem usando hmg rem hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbziparc\hbziparc @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc rddads\rddads @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc rddbm\rddbm @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc rddmisc\rddmisc @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc rddsql\rddsql @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc sddfb\sddfb @hbpost
rem hbmk2  -inc sddfb\sddfb 
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc sddoci\sddoci @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc sddodbc\sddodbc @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc sddsqlt3\sddsqlt3 @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc xhb\xhb  @hbpost

rem extras
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc rddado\rddado @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbxlsxml\hbxlsxml @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbvpdf\hbvpdf @hbpost

rem zslask
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbamqp\hbamqp  @hbpost
rem hbmk2[hbamqp]: Erro: Faltou a dependência: rabbitmq
rem hbmk2[hbamqp]: Exit status: 10: dependência não encontrada ou desativada
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbcrypto\hbcrypto @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbicu\hbicu @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbyaml\hbyaml @hbpost

rem outros compilado individualmente quando a atualizacao .bat 32 64 na pasta addons
rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sefazclass\sefazclass.hbp @hbpost
rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sefazclass_produto_core\sefazclass_produto_core.hbp @hbpost
rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sqlrddpp\sqlrddpp.hbp  @hbpost
rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sqlite3facade\sqlite3facade.hbp  @hbpost
rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  esocial\esocial.hbp  @hbpost

rem sem uso zipados em addons
rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  superlib\superlib
rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  gas4harbour\gas4harbour 
rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  wvwclip\wvwclip
rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  cacherdd\cacherdd

hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hblibxlsxwriter\hblibxlsxwriter
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbxlsxwriter\hbxlsxwriter

rem configuracao para o tdbclass abaixo para a libs
rem set HB_WITH_MYSQL=c:\harbour\hb3rd\mysql\include\
rem set HB_WITH_PGSQL=c:\harbour\hb3rd\pgsql\include\
rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  tdbclass\Tdbclass @hbpost

rem em desenvolvimento no repo
rem warnings de compilacao
rem SET HB_WITH_ADS=c:\harbour\hb3rd\aceopenads\
rem hbmk2 -quiet -width=0 -autohbm- @hbpre -inc rddadsopen\rddadsopen.hbp @hbpost

rem === mysql ===
Set HB_STATIC_MYSQL=yes
set HB_USER_LDFLAGS=-static -static-libgcc -static-libstdc++
set HB_WITH_MYSQL=c:\harbour\hb3rd\mysql\include\
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sddmy\sddmy @hbpost
rem usando hmg rem hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbmysql\hbmysql @hbpost

rem ===  pgsql ===
set HB_STATIC_PGSQL=no
set HB_WITH_PGSQL=c:\harbour\hb3rd\pgsql\include\
set HB_USER_LDFLAGS=-static -static-libgcc -lintl -liconv -lws2_32 -lsecur32
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  hbpgsql\hbpgsql @hbpost
hbmk2 -quiet  -width=0 -autohbm- @hbpre -inc  sddpg\sddpg @hbpost


rem === FIREBIRD ===
set HB_STATIC_FBIRD=no
set HB_WITH_FIREBIRD=C:\harbour\hb3rd\firebird\include\
set HB_USER_LDFLAGS=-static-libgcc -static-libstdc++
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc hbfbird\hbfbird @hbpost
hbmk2 -quiet -width=0 -autohbm- @hbpre -inc sddfb\sddfb @hbpost

