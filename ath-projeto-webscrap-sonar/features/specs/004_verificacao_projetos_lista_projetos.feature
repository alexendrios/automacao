#language:pt

@verificacao_execucao
Funcionalidade: Verificacao dos projetos extraidos do sonar 
- Após a criação do arquivo '.csv' 
- Listar os projetos  e comparar o resultado com a lista de projetos QAs 
- Execução da extração

Cenário: Verificacao dos projetos extraidos do sonar e comparando a Lista dos projetos de QAs
Quando informo uma um arquivo "extracao_sonar.csv" contendo o resultado da extração dos projetos no Sonar,
E informo um arquivo "QAsProjects.csv" contendo a identificação da Sigla, o projeto e o QA responsável,
E ao logar na aplicação com os seguintes dados usuario "c1299459" e senha "12994596"
Então executo a extração

