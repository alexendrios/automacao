# language: pt
@cliclando_botao
Funcionalidade: Clicar no botão

  @001_clicando_botao_sobre
  Cenário: Clicar no botão sobre da aplicação
    Dado que esteja na aplicação
    Quando eu clico no botão sobre
    Então vejo a seguinte mensagem "App desenvolvida para o curso: "
