# language: pt
@investir_lci_lca
Funcionalidade: Efetuar investimento - Titulos de Renda Fixa - Módulo LCA / LCI

  Contexto: Sistema Logado
    Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "48290-0" senha "88888888"

  @001_investir_lci_lca
  Cenário: Realizar o Investimento - Titulos de Renda Fixa - Módulo LCA / LCI
    Quando informo  o tipo de operação desejada "Investiomento" a modalidade "LCI POS-FIXADA COM RESGATE", valor do investimento "500,00",
    E para finalizar o investimento informo a senha de seis dígitos "666666"
    Então eu vejo a seguinte a menssagem de confirmação de investimento "Sucesso"
