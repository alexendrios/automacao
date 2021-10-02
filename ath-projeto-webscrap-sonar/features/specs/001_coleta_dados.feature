#language:pt

@webScraper_projeto
Funcionalidade: Extrair dados do Sonar
Eu como usuário 
dado esteja logado ao Sonar
quando eu informo o nome do projeto
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

Cenário: Extrair os dados do Sonar - Capturar as informações - Salvando em um arquivo.csv
Quando eu informo o nome do projeto 'spd-estatico',
E desejo visualizar os dados  'Issues' para extrair as informações sobre Bugs, Code Smalls e Vulnerabilities,
E desejo visualizar os dados 'Coverage' para extrair as informações sobre a cobertura de Código
Então eu salvo os dados em um arquivo.csv

