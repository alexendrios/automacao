#language:pt

@webScraper_povoar_db
Funcionalidade: Lançar registros no Banco de Dados

Cenário:  Ler o arquivo com os dados de extração e Lançar os registros no Banco de dados
Quando informar o arquivo de extração "extracao_sonar.csv", 
E ao ler essas informaações, que serão utolizadas para povoará o Banco de Dados
Então retornará uma mensagem de sucesso: "Registros Lançados no Banco de Dados!!"