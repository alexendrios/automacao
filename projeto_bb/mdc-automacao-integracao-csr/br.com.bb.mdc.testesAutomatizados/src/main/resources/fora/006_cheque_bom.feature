#language:pt
Funcionalidade: Verificar massa de cheques bons

  @006_verificar_massa_chequeBons
  Cenário: Verificar se massa de cheques bons são bons
    Dado que informo o arquivo ""
    Quando informo a data de movimento "" 
    E informo o local do arquivo "c://temp/"
    E acesso o servidor "\\172.17.202.176\bull_import\PRODUCER"
    E infomro o arquivo gerado "CSR714.D191010.RS100001"
   	E acesso o servidor "\\172.17.202.176\csexport"
   	E busco "CSR724.D191010.RS100001", verifico "Arquivo Existente no Diretório"
   	E busco a resposta do servidor pelo arquivo "CSR717.D191010.R000001"
   	E analiso o seu conteúdo
    E acesso relatório gerado no endereço "file:///C:/Users/Alexandre%20Santos/eclipse-workspace/br.com.bb.mdc.testesAutomatizados/report.html"
    Então vejo a seguinte mensagem "REPORT CSR717"




