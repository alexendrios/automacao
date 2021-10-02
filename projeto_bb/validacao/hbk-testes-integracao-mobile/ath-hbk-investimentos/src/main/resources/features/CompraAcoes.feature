#language:pt
@compra_acoes
Funcionalidade: Efetuar Compra de ações - Módulo Ações

  Contexto: Sistema Logado
    Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "48290-0" senha "88888888"

  @001_compra_acoes_normal
  Cenário: Realizar a compra de ações correspondente no módulo Ações do aplicativo hbk - Modalidade Compra Normal
    Quando informo o tipo de compra "Normal", o ativo "BBAS3", a quantidade "100", preço Limite "25,00",
    E para finalizar a a transação referente a compra de ações informo a senha de seis dígitos "666666"
    Então eu vejo a seguinte a mensagem de confirmação da Compra de Ações"Sucesso"

  @002_compra_acoes_start
  Cenário: Realizar a compra de ações correspondente no módulo Ações do aplicativo hbk - Modalidade Compra Start
    Quando informo o tipo de compra "Start", o ativo "BBAS3", a quantidade "100", preço Disparo "25,00", preço Limite "26,00",
    E para finalizar a a transação referente a compra de ações informo a senha de seis dígitos "666666"
    Então eu vejo a seguinte a mensagem de confirmação da Compra de Ações"Sucesso"

  @003_compra_acoes_stop_programado_sem_ajuste
  Cenário: Realizar a compra de ações correspondente no módulo Ações do aplicativo hbk - Modalidade Stop Programado sem Ajuste
    Quando informo o tipo de compra de ações "Stop Programado", o ativo "BBAS3", a quantidade "100", preço Limite "27,00", limite de ganho "27,20", disparo perda "24,00", limite perda "23,50"
    E para finalizar a a transação referente a compra de ações informo a senha de seis dígitos "666666"
    Então eu vejo a seguinte a mensagem de confirmação da Compra de Ações"Sucesso"

  @004_compra_acoes_stop_programado_com_ajuste
  Cenário: Realizar a compra de ações correspondente no módulo Ações do aplicativo hbk - Modalidade Stop Programado com Ajuste
    Quando informo o tipo de compra de ações "Stop Programado", o ativo "BBAS3", a quantidade "100", preço Limite "27,00", limite de ganho "27,20", disparo perda "24,00", limite perda "23,50", ajuste "SIM", valor do ajuste "00.50",
    E para finalizar a a transação referente a compra de ações informo a senha de seis dígitos "666666"
    Então eu vejo a seguinte a mensagem de confirmação da Compra de Ações"Sucesso"
