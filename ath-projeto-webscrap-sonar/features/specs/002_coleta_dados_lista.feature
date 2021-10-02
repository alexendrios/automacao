#language:pt

@webScraper_lista
Funcionalidade: Extrair dados do Sonar
Eu como usuário 
dado esteja logado ao Sonar
quando eu informo uma lista de projetos
- lista esta contida en um arquivo csv
ao navegar pela aplicação 
informando os Indicadores Gráficos 
então eu extraio as seguintes informações:

- Bugs
- Code Smells
- Vulnerabilities
- Coverage

Salvando os dados em um arquivo.csv 
Finalizando assim captura dos dados.

Contexto: Sistema Logado
Dado eu esteja logado na aplicação usuario 'c1299459' e senha '12994596'

Cenário: Extrair os dados de uma lista de Projetos do Sonar - Capturar as informações - Salvando em um arquivo.csv
Quando eu informo um arquivo "QAsProjects.csv" contendo a identificação da Sigla, o projeto e o QA responsável,
E desejo visualizar os dados  referente aos indicadores 'Issues' e 'Coverage',
Então eu finalizo a operação salvando os dados em um arquivo .csv