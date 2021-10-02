#language: pt

@login
Funcionalidade: Login
SENDO um usuario
EU QUERO logar no sistema com meus dados
PARA que eu possa acessar o sistema de Cadastro de oficio

Cenario: Logar o Sistema SITTEL com Sucesso

Dado que estou na pagina de login do sistema
Quando eu informo um 'juliana.jp' e 'ctidpf'
Entao vejo "Dados do Ofício"