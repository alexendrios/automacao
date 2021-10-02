#language:pt
@resgatar_lci_lca
Funcionalidade: Efetuar resgate - Módulo LCA-LCI

  Contexto: Sistema Logado
    Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "48290-0" senha "88888888"

  @001_resgatar_lci_lca_parcial
  Cenário: Realizar o Resgate - Módulo LCA-LCI - Parcial
    Quando informo  o tipo de operação desejada "Resgate" a modalidade "LCI POS-FIXADA COM RESGATE", tipo "Parcial", valor de resgate "20,00"
    E para finalizar o resgate informo a senha de seis dígitos "666666"
    Então eu vejo a seguinte a menssagem de confirmação de resgate "Sucesso"

  @002_resgatar_lci_lca_total
  Cenário: Realizar o Resgate - Módulo LCA-LCI - Total
    Quando informo  o tipo de operação desejada "Resgate" a modalidade "LCI POS-FIXADA COM RESGATE", tipo de resgate "Total"
    E para finalizar o resgate informo a senha de seis dígitos "666666"
    Então eu vejo a seguinte a menssagem de confirmação de resgate "Sucesso"
