@echo off
setlocal

echo [1/4] Configurando ambiente MSVC (32-bit)...
call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" -arch=x86

echo [2/4] Configurando o CCache para o MSVC...
rem winget install ccache.ccache
rem ccache --version
set CC=ccache cl.exe
set CXX=ccache cl.exe
rem set CC=C:\caminho\para\o\ccache.exe cl.exe
rem set CXX=C:\caminho\para\o\ccache.exe cl.exe

echo [3/4] Configurando o OpenSSL (VC-WIN32)...
perl Configure VC-WIN32 --prefix=C:\devprg\openssl32 --openssldir=C:\devprg\openssl32

echo [4/4] Compilando e Instalando...
nmake clean
nmake
nmake install

echo Concluido com sucesso!
pause