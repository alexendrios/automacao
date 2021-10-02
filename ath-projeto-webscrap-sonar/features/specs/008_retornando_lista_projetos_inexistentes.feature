#language:pt

@webScraper_lista_projetos_nao_existe
Funcionalidade: Retornar uma lista de projetos não existentes
Eu como usuário 
dado esteja logado ao Sonar
quando eu informo o nome do projeto
ao navegar pela aplicação 
retono ma coleção de projetos não existente


Contexto: Sistema Logado
Dado eu esteja logado na aplicação usuario 'c1299459' e senha '12994596'

Cenário: Retornar uma lista de projetos não existentes na aplicação SONAR
Quando eu informo um arquivo "QAsProjects.csv" contendo a identificação da Sigla, o projeto e o QA responsável,
Então retono uma lista de projetos não encontrados no sonar.