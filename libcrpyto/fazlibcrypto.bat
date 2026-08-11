call d:\devprg\hb\hb32msys.bat
call c:\devprg\hb\hb32msys_c.bat
copy C:\Windows\System32\cryptui.dll

rem Gere o arquivo .def:
gendef C:\Windows\System32\cryptui.dll

rem Crie a .a:
dlltool -d cryptui.def -l libcryptui.dll.a -k

rem link simbolico
rem ln -s libcryptui.dll.a libcryptui.a

rem opcao copia
