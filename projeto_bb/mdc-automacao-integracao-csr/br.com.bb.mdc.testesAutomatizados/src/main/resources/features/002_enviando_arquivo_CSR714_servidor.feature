#language:pt
Funcionalidade: Enviando um arquivo para o servidor

  @002_enviar_CSR714
  Cenário: Enviando o arquivo CSR714 para o servidor
    Dado que eu acesso o servidor "\\172.17.202.176\bull_import\PRODUCER"
    Quando informo o local do arquivo "c://temp/"
    E informo o nome do arquivo "CSR714.D200115.R0000010"
    Então envio para o o arquivo para o servidor "\\172.17.202.176\bull_import\PRODUCER"
