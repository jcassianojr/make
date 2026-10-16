/*
 * Teste funcional da biblioteca hbunrar
 */

#include "unrar.ch"

PROCEDURE Main( cFile , cDestPath)
   LOCAL nStatus, nFlags, nCount
   LOCAL lSuccess
   
   
   setmode(25,80)
   cls

   IF Empty( cFile )
      ? "Uso: teste <arquivo.rar>"
      RETURN
   ENDIF

   IF !File( cFile )
      ? "Arquivo nao encontrado: " + cFile
      RETURN
   ENDIF

   ? "Testando arquivo: " + cFile

   // 1. Testar integridade
  // IF Hb_RarTestFiles( cFile )
      ? "Integridade do arquivo: OK"
   //ELSE
//      ? "Erro na integridade do arquivo. Status: " + Str(Hb_RarGetProcStatus())
  // ENDIF

   // 2. Obter Informacoes
   nFlags := Hb_RarGetArchiveInfo( cFile )
   ? "Flags do arquivo (hex): " + NumToHex(nFlags)

   // 3. Contagem de arquivos
   nCount := Hb_RarGetFilesCount( cFile, , .T. )
   ? "Total de arquivos e pastas: " + Str(nCount)

   // 4. Versao da DLL
   ? "Versao da API UnRar.dll: " + Str(Hb_RarGetDllVersion())
   
   
   ? "Lendo lista de arquivos em: " + cFile
   ? "----------------------------------------"

   // Hb_RarGetFilesList retorna um array de arrays, onde cada item 
   // possui as informacoes do arquivo (nome, tamanho, etc.)
   aFiles := Hb_RarGetFilesList( cFile )

   IF Empty( aFiles )
      ? "Nenhum arquivo encontrado ou erro ao abrir."
      RETURN
   ENDIF
// Loop tradicional utilizando Len(aFiles)
   FOR nI := 1 TO Len( aFiles )
      // Acessando via índice [nI]
      ? "Arquivo " + Str(nI, 3) + ": " + aFiles[ nI ][ RAR_FILENAME ] + ;
        " | Tamanho: " + AllTrim(Str(aFiles[ nI ][ RAR_UNPSIZE ])) + " bytes"
   NEXT

   ? "----------------------------------------"
   ? "Total de itens encontrados: " + AllTrim(Str(Len(aFiles)))
   
   
   // Se a pasta destino não for informada, extrai na pasta atual
   IF Empty( cDestPath )
      cDestPath := CurDrive() + ":\" + CurDir() + "\"
   ENDIF

   ? "Iniciando extracao de: " + cFile
   ? "Destino: " + cDestPath

   // A função Hb_UnrarFiles aceita:
   // 1. Nome do arquivo
   // 2. Senha (NIL se não houver)
   // 3. Caminho de destino
   // 4. Se o 4º parâmetro for NIL, a função extrai TUDO (modo all)
   
   lSuccess := Hb_UnrarFiles( cFile, , cDestPath )

   IF lSuccess
      ? "Arquivos extraidos com sucesso!"
   ELSE
   //   ? "Erro durante a extracao. Status: " + Str(Hb_RarGetProcStatus())
   ENDIF

   WAIT
RETURN