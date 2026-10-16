rem Set HB_STATIC_MYSQL=yes
rem set HB_USER_LDFLAGS=-static -static-libgcc -static-libstdc++
set HB_WITH_MYSQL=\harbour\hb3rd\mysql-x64\include\
call c:\devprg\hb64\hb64msys_c.bat
rem hbmk2.exe hbmysql.hbp -exitstr -info  -trace
hbmk2.exe hbmysql.hbp
