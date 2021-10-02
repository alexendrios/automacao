Quando("solicitar pesquisar grupo de usuarios") do
  @usuario_page = UsuarioPage.new
  @usuario_page.manter_grupo_usuario
end

Quando("não informar o nome do grupo") do
  @usuario_page.btn_pesquisar.click
end

Quando("informar o nome do grupo {string}") do |grupo|
    @usuario_page.informar_grupo_pesquisa(grupo)
end

Entao("deve apresentar a lista de grupos") do
  @usuario_page.exibir_lista_grupos
end

Quando("solicitar detalhar o grupo de usuario") do
  @usuario_page.btn_detalhar.click
end

Entao("deve visualizar os dados da tela Detalhar Grupos de Usuário") do
  @usuario_page.visualizar_tela_detalhes
end

Quando("solicitar alterar o grupo de usuario") do
  @usuario_page.btn_alterar.click
end

Quando("adicionar uma configuração para {string} de {string}") do |tipo_config, opcao|
  @usuario_page.add_config_grupo(tipo_config, opcao)
end

Quando("remover uma configuração para {string} de {string}") do |tipo_config, opcao|
  @usuario_page.excluir_config_grupo(opcao)
end

