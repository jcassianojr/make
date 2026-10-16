rem SET HB_INSTALL_PREFIX=d:\hbcomp\
del *.a
call d:\DEVPRG\hb\hb64msys
call c:\DEVPRG\hb64\hb64msys_c.bat
SET WHIT_UNRAR_DLL=c:\harbour\hb3rd\unrar-x64\
hbmk2.exe hbunrar.hbp 

