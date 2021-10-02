#language:pt

@salvando_extracao_loop
Funcionalidade: Salvando Dados da Extração 
- A cada Extraçao dos dados, salvando as informações em um arquivo ".csv"
    - Estas informações referencia se a cada projeto

Contexto: Sistema Logado
Dado eu esteja logado na aplicação usuario 'c1299459' e senha '12994596'

Cenário: Salvando Dados da Extração dos Projetos no Sonar - Arquivo ".csv"
Quando informo uma um arquivo "QAsProjects.csv" contendo as seguintes informações: identificação da Sigla, o projeto e o QA responsável,
Então salvo as informações da extração em um arquivo .csv

