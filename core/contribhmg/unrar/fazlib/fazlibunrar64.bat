@echo off
call d:\devprg\hb\hb64msys.bat
call c:\devprg\hb\hb64msys_c.bat

rem Gere o arquivo .def:
gendef unrar64.dll

rem Crie a .a:
dlltool -d unrar64.def -l libunrar64.a -k

rem link simbolico
rem ln -s libcryptui.dll.a libcryptui.a

rem opcao copia
