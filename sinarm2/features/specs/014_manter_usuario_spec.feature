#language: pt

@manter_usuario
Funcionalidade: Manter Usuario

  @pesquisar_grupo_usuario
  Cenario: Pesquisar grupo de usuarios sem parametros
    Quando solicitar pesquisar grupo de usuarios
    E não informar o nome do grupo
    Entao deve apresentar a lista de grupos

  @pesquisar_grupo_usuario_por_nome
  Cenario: Pesquisar grupo de usuarios
    Quando solicitar pesquisar grupo de usuarios
    E informar o nome do grupo "Consulta Policia Federal"
    Entao deve apresentar a lista de grupos

  @detalhar_grupo_usuario
  Cenario: Detalhar grupo de usuarios
    Quando solicitar pesquisar grupo de usuarios
    E informar o nome do grupo "DIRETOR_GERAL"
    E solicitar detalhar o grupo de usuario
    Entao deve visualizar os dados da tela Detalhar Grupos de Usuário

  @alterar_grupo_usuario_add
  Cenario: Alterar grupo de usuarios e adicionar configurações
    Quando solicitar pesquisar grupo de usuarios
    E informar o nome do grupo "DIRETOR_GERAL"
    E solicitar alterar o grupo de usuario
    E adicionar uma configuração para "Manifestação" de "Despacho"
    E adicionar uma configuração para "Tramitação" de "DIRETOR_GERAL"
    # E adicionar uma configuração para "Decisão" de "Porte Arma de Fogo"

  @alterar_grupo_usuario_remover
  Cenario: Alterar grupo de usuarios e remover configurações
    Quando solicitar pesquisar grupo de usuarios
    E informar o nome do grupo "DIRETOR_GERAL"
    E solicitar alterar o grupo de usuario
    E remover uma configuração para "Manifestação" de "Despacho"
    E remover uma configuração para "Tramitação" de "DIRETOR_GERAL"
    # E remover uma configuração para "Decisão" de "Porte Arma de Fogo"