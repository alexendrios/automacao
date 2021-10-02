class UsuarioPage < PageHelper
  element :pesquisa_grupo_input, '#formAcompanhar\:Grupo'
  element :btn_pesquisar, 'input[value="Pesquisar"]'
  element :table_grupos, '#formAcompanhar\:tabelaGrupoUsuario'

  element :btn_detalhar, 'img[title="Detalhar"]'
  element :btn_alterar, 'img[title="Alterar"]'

  element :tela_detalhes_grupo, :xpath, '//label[text()[contains(.,"Detalhar Grupos de Usuário")]]'

  element :tela_alterar_grupo, :xpath, '//text()[contains(.,"Alterar Grupo de Usuários")]'
  element :select_manifestacao, :xpath, '//text()[contains(., "Manifestações autorizadas")]/../../select'
  element :select_tramitacoes, :xpath, '//text()[contains(., "Tramitações possíveis")]/../../select'
  element :select_decisoes, :xpath, '//text()[contains(., "Decisões autorizadas")]/../../select'
  element :btn_add_manifestacao, :xpath, '//text()[contains(., "Manifestações autorizadas")]/../../input'
  element :btn_add_tramitacao, :xpath, '//text()[contains(., "Tramitações possíveis")]/../../input'
  element :btn_add_decisao, :xpath, '//text()[contains(., "Decisões autorizadas")]/../../input'
  element :btn_excluir_config, 'img[src*="excluir"]'
  element :btn_comfirma_exclusao, 'input[value*="Sim"]'

  def manter_grupo_usuario
    acessar_home
    menu_manter_grupo_usuario
  end

  def exibir_lista_grupos
    aguardar_carregamento

    puts "Visualizando Lista de Grupos"
    wait_until_table_grupos_visible
  end

  def informar_grupo_pesquisa(grupo)
    puts "Pesquisando grupo"
    pesquisa_grupo_input.click.set(grupo)
    btn_pesquisar.click
    aguardar_carregamento
  end

  def visualizar_tela_detalhes
    puts "Aguardando tela Detalhar Grupos de Usuário "
    wait_until_tela_detalhes_grupo_visible
  end

  def add_config_grupo(tipo_config, opcao)
    if tipo_config == "Manifestação"
      puts "Adicionando Manifestação"
      select_manifestacao.select(opcao)
      btn_add_manifestacao.click
    elsif tipo_config == "Tramitação"
      puts "Adicionando Tramitação"
      select_tramitacoes.select(opcao)
      btn_add_tramitacao.click
    else
      puts "Adicionando Decisão"
      
      select_decisoes.select(opcao)
      btn_add_decisao.click
    end
  end

  def linha_configuracao(option)
    find(:xpath, "//td[text()='#{option}']/..")
  end

  def excluir_config_grupo(opcao)
    
    within(linha_configuracao(opcao)) do
      puts "Excluindo a opção #{opcao}"
      btn_excluir_config.click
    end

    puts "Confirmando exclusão da opção #{opcao}"
    btn_comfirma_exclusao(match: :first).click
  end
end
