#language:pt
@Venda_ouro
Funcionalidade: Efetuar Venda Ouro - Módulo Ouro

  Contexto: Sistema Logado
    Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "45614-4" senha "88888888"

  Cenário: Realizar a venda Ouro referente ao módulo Ouro do aplicativo hbk 
    Quando informa a quantidade de "25" gramas para negociar a venda
    E informo a  senha de seis dígitos "666666" para realizar a transação de Venda Ouro
    Então eu vejo a seguinte a messagem de confirmação da Venda Ouro com "Sucesso"

 
