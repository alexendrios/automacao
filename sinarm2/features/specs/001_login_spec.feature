#language: pt

@login
Funcionalidade: Realizar login SINARM

  @login_sucesso
  Cenario: Logar com sucesso no sistema SINARM
      Dado que estou na pagina de login do SINARM
      Quando eu informo usuario "toledo.rct" e senha "ctidpf"
      Entao sou autenticado com "RICARDO CORTEZ TOLEDO"
