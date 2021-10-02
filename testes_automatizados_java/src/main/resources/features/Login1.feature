# language: pt
Funcionalidade: Login

  Esquema do Cenário: Realizar Login
    Quando eu informo <usuario> e <senha>
    Então visualizo a seguinte <mensagem>

    Exemplos: 
      | usuario     | senha | mensagem                     |
      | "stefanini" |   123 | "Usuario logado com Sucesso" |
      | "ricardo"   |   345 | "Usuario logado com Sucesso" |
      | "ricardo"   |   345 | "Senha/Usuário inválido"     |
