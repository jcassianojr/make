set HB_WITH_PGSQL=c:\harbour\hb3rd\pgsql-x64\include\
call d:\DEVPRG\hb64\hb64msys.bat
call c:\DEVPRG\hb64\hb64msys_c.bat
SET HB_USER_CFLAGS=-DHB_SQLT3_MAP_DECLARED_EMULATED
hbmk2.exe sddsqlt3.hbp -cflag="-DHB_SQLT3_MAP_DECLARED_EMULATED" -rebuild
