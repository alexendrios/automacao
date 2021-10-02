#language:pt
@venda_acoes
Funcionalidade: Efetuar venda de ações - Módulo Ações

  Contexto: Sistema Logado
    Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "45614-4" senha "88888888"

  @001_vendaAcoesNormal
  Cenário: Realizar a venda de ações correspondente no módulo Ações dp aplicativo hbk - Modalidade Venda Normal
    Quando informo o tipo de venda "Normal", o ativo "PETR4F", a quantidade "30", preço Limite "48,00",
    E informo a custódia Conta "Corrente", a senha de seis dígitos "666666"
    Então eu vejo a seguinte a messagem de confirmação da venda "Sucesso"

  @002_vendaAcoesStop
  Cenário: Realizar a venda de ações correspondente no módulo Ações dp aplicativo hbk - Modalidade Venda Stop
    Quando informo o tipo de venda "Stop", o ativo "PETR4F", a quantidade "30", preço Disparo "20,68", preco Limite "29,35",
    E informo a custódia Conta "Corrente", a senha de seis dígitos "666666"
    Então eu vejo a seguinte a messagem de confirmação da venda "Sucesso"

  @003_vendaAcoesSimultaneo
  Cenário: Realizar a venda de ações correspondente no módulo Ações dp aplicativo hbk - Modalidade Venda Simultâneo
    Quando informo o tipo de venda "Simultâneo", o ativo "PETR4F", a quantidade "30", preço Disparo "49,30", preco Limite "48,50", preço limite ganho "48,66", preco limite perda "47,90",
    E informo a custódia Conta "Corrente", a senha de seis dígitos "666666"
    Então eu vejo a seguinte a messagem de confirmação da venda "Sucesso"
    
  @004_venda_acoes_movel
  Cenário: Realizar a venda de ações correspondente no módulo Ações dp aplicativo hbk - Modalidade Móvel
    Quando informo o tipo de venda "Móvel", o ativo "PETR4F", a quantidade "30", preço Disparo "48,10", preco Limite "47,50", preço inicio stop móvel "70,00", preco ajuste inicial "21,88",
    E informo a custódia Conta "Corrente", a senha de seis dígitos "666666"
    Então eu vejo a seguinte a messagem de confirmação da venda "Sucesso"
