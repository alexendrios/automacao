#language: pt

@logout_operacoes
@acoes_saldo
Funcionalidade: Interação com o Sistema - Ações

Cenario: Interação com o Sistema fluxo Ações - Verificar saldo
Dado  que eu estou logado no sistema HBK com as seguintes informações: titular '1º titular' agência '7988-X' conta '48290-0' e a senha de autoatendimento '88888888'
Quando eu navego no menu açoes, consigo visulizar o saldo
Entao eu vejo a seguinte menssagem 'Saldos'

