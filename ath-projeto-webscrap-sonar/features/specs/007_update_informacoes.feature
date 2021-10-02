#language:pt

@extracao_update
Funcionalidade: Update 
- Ler os dados referente a lista de projetos QA, contendo as seguinte informações:
    * Sigla;
    * Projeto;
    * QA
- Ler os dados referente a extração do sonar
        a) Issues;
        b) Coverage;
    * Capturar os seguintes dados:
        a) Versão do Build;
        b) Data;
    * - Comparar com os dados dos projetos no Sistema
        a) Se houver modificação extrair somente essa informação
 
Contexto: Sistema Logado
Dado eu esteja logado na aplicação usuario 'c1299459' e senha '12994596'

Cenário:  Update dos projetos na aplicação Sonar
Quando informo uma um arquivo "extracao_sonar.csv" contendo o resultado da extração dos projetos no Sonar,
E informo um arquivo "QAsProjects.csv" contendo a identificação da Sigla, o projeto e o QA responsável,
E ao analizar os dados no sonar
Então realizo a atualização dos dados
