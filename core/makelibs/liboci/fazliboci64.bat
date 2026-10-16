call d:\devprg\hb64\hb64msys.bat
call c:\devprg\hb64\hb64msys_c.bat

rem Gere o arquivo .def:
gendef oci.dll

rem Crie a .a:
dlltool -d oci.def -l liboci.a -k

rem link simbolico
rem ln -s libcryptui.dll.a libcryptui.a

rem opcao copia
