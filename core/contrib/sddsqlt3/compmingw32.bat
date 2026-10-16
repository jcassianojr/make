set HB_WITH_PGSQL=c:\harbour\hb3rd\pgsql\include\
call d:\DEVPRG\hb\hb32msys.bat
call c:\DEVPRG\hb\hb32msys_c.bat
SET HB_USER_CFLAGS=-DHB_SQLT3_MAP_DECLARED_EMULATED
hbmk2.exe sddsqlt3.hbp -cflag="-DHB_SQLT3_MAP_DECLARED_EMULATED" -rebuild
