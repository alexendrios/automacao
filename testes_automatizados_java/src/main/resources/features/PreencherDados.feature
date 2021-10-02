# language: pt
@preencher_dados
Funcionalidade: Preencher dados;

  Cenário: Preenchando dados na aplicação
    Dado que esteja na aplicação
    Quando eu Escolho a opção "Seu Barriga Nativo",
    E informo o nome "Usuário Mobile" e Senha "admin123",
    Então clico no botão entrar retornando a mensagem "Problemas com o login"
