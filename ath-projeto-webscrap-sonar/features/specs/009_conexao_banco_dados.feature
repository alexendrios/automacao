#language:pt

@webScraper_conectar_banco_dados
Funcionalidade: Conectar ao Banco de Dados

Cenário:  Conexão ao Banco de Dados MySql localhost
Quando chamar a conexão do Banco de Dados
Então retorna um Status com a seguinte mensagem "Conectado ao Banco de Dados"