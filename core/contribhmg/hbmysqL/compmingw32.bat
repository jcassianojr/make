Set HB_STATIC_MYSQL=yes
set HB_USER_LDFLAGS=-static -static-libgcc -static-libstdc++
set HB_WITH_MYSQL=\harbour\hb3rd\mysql\include\
call d:\DEVPRG\hb\hb32msys.bat
call c:\DEVPRG\hb\hb32msys_c.bat
hbmk2.exe hbmysql.hbp
