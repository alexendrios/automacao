#language:pt
Funcionalidade: Validando o Arquivo no Servidor

  @003_validando_arquivo_servidor
  Cenário: Escutando o servidor após o CSR714 ser enviado para o servidor
    Dado eu acesso o servidor "\\172.17.202.176\csexport"
    Quando busco o arquivo "CSR724.D200115.R0000010"
    Então eu tenho um resposta de retorno "Arquivo Existente no Diretório"
