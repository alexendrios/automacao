#language:pt
@Compra_ouro
Funcionalidade: Efetuar Compra Ouro - Módulo Ouro

  Contexto: Sistema Logado
    Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "45614-4" senha "88888888"

  Cenário: Realizar a compra Ouro referente ao módulo Ouro do aplicativo hbk 
    Quando informa a quantidade de "25" gramas
    E informo a  senha de seis dígitos "666666"
    Então eu vejo a seguinte a messagem de confirmação da Compra com "Sucesso"

 
