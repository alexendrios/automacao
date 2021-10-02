
#language:pt

@compra_acoes
Funcionalidade: Efetuar compra de ações - Módulo Ações

Contexto: Sistema Logado
Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "45614-4" senha "88888888"

@compra_acoes_normal
Cenário: Realizar a compra de ações correspondente no módulo Ações do aplicativo hbk - Modalidade Compra Normal
Quando informo o tipo de compra 'Normal', o ativo 'BBAS3', a quantidade '100', preço Limite '25,00',
E para finalizar a compra informo a senha de seis dígitos '666666'
Então eu vejo a seguinte a menssagem de confirmação da compra "Sucesso"

@compra_acoes_start
Cenário: Realizar a compra de ações correspondente no módulo Ações do aplicativo hbk - Modalidade Compra Start
Quando informo o tipo de compra 'Start', o ativo 'BBAS3', a quantidade '100', preço Disparo '25,00', preço Limite '26,00',
E para finalizar a compra informo a senha de seis dígitos '666666'
Então eu vejo a seguinte a menssagem de confirmação da compra "Sucesso"

@compra_acoes_stop_programado_sem_ajuste
Cenário: Realizar a compra de ações correspondente no módulo Ações do aplicativo hbk - Modalidade Compra Start
Quando informo o tipo de compra 'Stop Programado', o ativo 'BBAS3', a quantidade '100', preço Limite '25,00',
E informo preço disparo "", limite de ganho "", disparo perda "", limite perda "", 
E para finalizar a compra informo a senha de seis dígitos '666666'
Então eu vejo a seguinte a menssagem de confirmação da compra "Sucesso"

@compra_acoes_stop_programado_com_ajuste
Cenário: Realizar a compra de ações correspondente no módulo Ações do aplicativo hbk - Modalidade Compra Start
Quando informo o tipo de compra 'Stop Programado', o ativo 'BBAS3', a quantidade '100', preço Limite '25,00',
E informo preço disparo "", limite de ganho "", disparo perda "", limite perda "", ajuste "SIM", valor ajuste "",
E para finalizar a compra informo a senha de seis dígitos '666666'
Então eu vejo a seguinte a menssagem de confirmação da compra "Sucesso"