#language:pt

@venda_acoes
Funcionalidade: Efetuar venda de ações - Módulo Ações

Contexto: Sistema Logado
Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "48290-0" senha "88888888"


@venda_acoes_normal
Cenário: Realizar a venda de ações correspondente no módulo Ações dp aplicativo hbk - Modalidade Venda Normal
Quando informo o tipo de venda 'Normal', o ativo 'BBAS3F', a quantidade '30', preço Limite '70,00',
E e informo a custódia 'Conta Corrente', a senha de seis dígitos '666666'
Então eu vejo a seguinte a messagem de confirmação da venda "Sucesso"

@venda_acoes_stop
Cenário: Realizar a venda de ações correspondente no módulo Ações dp aplicativo hbk - Modalidade Venda Stop
Quando informo o tipo de venda 'Stop', o ativo 'BBAS3F', a quantidade '30', preço Disparo '29,68', preco Limite '29,35',
E e informo a custódia 'Conta Corrente', a senha de seis dígitos '666666'
Então eu vejo a seguinte a messagem de confirmação da venda "Sucesso"

@venda_acoes_simutaneo
Cenário: Realizar a venda de ações correspondente no módulo Ações dp aplicativo hbk - Modalidade Venda Simultâneio
Quando informo o tipo de venda 'Simutâneo', o ativo 'BBAS3F', a quantidade '30', preço Disparo '49,30', preco Limite '48,50',
E preço limite ganho '48,66', preco limite perda '47,90',
E e informo a custódia 'Conta Corrente', a senha de seis dígitos '666666'
Então eu vejo a seguinte a messagem de confirmação da venda "Sucesso"

@venda_acoes_movel
Cenário: Realizar a venda de ações correspondente no módulo Ações dp aplicativo hbk - Modalidade Venda Móvel
Quando informo o tipo de venda 'Móvel', o ativo 'BBAS3F', a quantidade '30', preço Disparo '48,10', preco Limite '47,50',
E preço inicio stop móvel '70,00', preco ajuste inicial '21,88',
E e informo a custódia 'Conta Corrente', a senha de seis dígitos '666666'
Então eu vejo a seguinte a messagem de confirmação da venda "Sucesso"