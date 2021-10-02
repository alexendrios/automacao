#language:pt

@resgatar_lci_lca
Funcionalidade: Efetuar resgate - Módulo LCA-LCI

Contexto: Sistema Logado
Dado que eu esteja logado com os seguintes dados agencia "551-7" conta "5151-9" senha "88888888"

@resgatar_lci_lca_parcial
Cenário: Realizar o Resgate - Módulo LCA-LCI - Parcial
Quando informo  o tipo de operação desejada 'Resgate' a modalidade "BB LCA POS CDI COM RESGATE", 
E solicito o tipo de resgate "Parcial", valor de resgate "20,00" 
E para finalizar o resgate informo a senha de seis dígitos '666666'
Então eu vejo a seguinte a menssagem de confirmação de resgate "Sucesso"

@resgatar_lci_lca_total
Cenário: Realizar o Resgate - Módulo LCA-LCI - Total
Quando informo  o tipo de operação desejada 'Resgate' a modalidade "BB LCA POS CDI COM RESGATE", 
E solicito o tipo de resgate "Total"
E para finalizar o resgate informo a senha de seis dígitos '666666'
Então eu vejo a seguinte a menssagem de confirmação de resgate "Sucesso"