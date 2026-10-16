Set HB_STATIC_MYSQL=yes
set HB_USER_LDFLAGS=-static -static-libgcc -static-libstdc++
set HB_WITH_MYSQL=c:\harbour\hb3rd\mysql-x64\include\
call c:\devprg\hb64\hb64msys_c
hbmk2.exe hbmysql.hbp -exitstr -info  -trace
