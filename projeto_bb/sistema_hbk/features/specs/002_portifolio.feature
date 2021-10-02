#language:pt

@portifolio
Funcionalidade: Efetuar uma consulta - portifólio

Cenário: Verificar se o saldo presente no Meu portifólio corresponde ao saldo no Protifólio Sugerido
Dado que eu informo o titular '1º titular' agencia "7988-X" conta "55596-7" e a senha de autoatendimento '88888888'
Quando Acesso a operacoa portifólio
Então verifico o saldo da carteira retorno 'true'
