@echo off
setlocal

echo [1/3] Configurando ambiente MSVC (64-bit)...
call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" -arch=amd64

echo [2/3] Definindo diretorios do SQLite...
set SRC_DIR=c:\temp\sqlite\share\sqlite\extensions
set INC_DIR=c:\temp\sqlite\include
set OUT_DIR=c:\temp\sqlite\bin\extensions64

if not exist "%OUT_DIR%" mkdir "%OUT_DIR%"

echo [3/3] Compilando as extensoes para 64-bit...
for %%f in ("%SRC_DIR%\*.c") do (
    echo Compilando: %%~nxf
    cl.exe /O2 /LD "%%f" /I"%INC_DIR%" /link /out:"%OUT_DIR%\%%~nf.dll"
)

echo Limpando arquivos temporarios de compilacao (.obj, .lib, .exp)...
del *.obj *.lib *.exp >nul 2>&1

echo Concluido com sucesso! 64-bit gerado em: %OUT_DIR%
pause