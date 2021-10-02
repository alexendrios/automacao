#language:pt

@extracao_forcada
Funcionalidade: Extração após um projeto no processo falhar
- Ler os dados referente a lista de projetos QA, contendo as seguinte informações:
    * Sigla;
    * Projeto;
    * QA
- Executar a extração dos Dados de acordo com a lista de projetos QA
- Cada projeto extraído:
    * Extrair as informações dos Indicadores:
        a) Issues;
        b) Coverage;
    * concartenar com as informações lista de projetos QA
    * salvar estas informações em um arquivo .csv
- Caso ocorra uma falha na captura dessas informações:
    * Ler o arquivo gerado de extração dos dados do Sonar, em um arquivo .csv
        a) Capturar os dados referente somente aos projetos;
        b) Adicionar estes dados em uma lista; 
    * Ler os dados da lista de projetos QA:
        a) Capturar os dados referente somente aos projetos;
        b) Adicionar estes dados em uma lista; 
        c) Capturar os dados d todo o arquivo;
        b) Adicionar estes dados em uma lista; 
    * Comparar as seguintes listas:
        a) extração dos dados do Sonar;
        b) lista de projetos QA -> referente aos projetos;
        c) O resultado dessa extração será adicionado a uma lista de arquivos a serem extraídos
        d) remover os dados dos projetos da lista de projetos QA
    * - Executar a extração dos Dados com referência a lista de arquivos a serem extraídos
 
Contexto: Sistema Logado
Dado eu esteja logado na aplicação usuario 'c1299459' e senha '12994596'

Cenário: Extração dos dados do Sonar após um projeto que esteja em processo falhar na captura destes dados
Quando ao informar um arquivo "QAsProjects.csv" contendo as seguintes informações: identificação da Sigla, o projeto e o QA responsável,
Então finalizo a operação salvando as informações da extração em um arquivo .csv


