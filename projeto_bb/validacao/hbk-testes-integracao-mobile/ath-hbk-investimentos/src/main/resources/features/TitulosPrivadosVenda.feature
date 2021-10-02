# language: pt
@venda_titulos_privados
Funcionalidade: Títulos Privados

  Contexto: Sistema Logado
    Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "48290-0" senha "88888888"

  Cenário: Realizar a venda - Títulos Privados - Modalidade Venda
    Quando informo Título "DEBENTURES - BBLS12", Quantidade "2", o valor "1.263,00";
    E informo a Senha do cartão "666666" para realizar a venda na Funcionalidade títulos Privados,
    Então eu vejo a seguinte a mesagem de confirmação da venda do Título Privado com "Sucesso"
