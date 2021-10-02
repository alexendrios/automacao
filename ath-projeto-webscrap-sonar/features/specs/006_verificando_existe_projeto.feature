#language:pt

@webScraper_projeto_existe
Funcionalidade: Verificar se O projeto existe no Sonar
Eu como usuário 
dado esteja logado ao Sonar
quando eu informo o nome do projeto
ao navegar pela aplicação 
verifico se o mesmo exite,


Contexto: Sistema Logado
Dado eu esteja logado na aplicação usuario 'c1299459' e senha '12994596'

Cenário: Verificar se O projeto existe no Sonar
Quando ao informar o nome do projeto 'ibi-gestao-facial-funcionario',
Então verifico se o mesmo existe 'true'

