class ConfeccionarRegistroPortePage < PageHelper
  element :tipo_documento_select, :xpath, '//*[@id="formAcompanhar"]/div/div[1]/div[2]/select'
  element :check_dados_porte_input, 'input[value="DADOS_DO_PORTE_ARMA"]'
  element :nr_porte_input, '#formAcompanhar\:numeroPorte'
  element :check_dados_emissao_input, 'input[value="DADOS_DE_EMISSAO"]'
  element :unidade_expedidora_select, :xpath, '//*[text()[contains(.,"Unidade Expedidora")]]/../../div[2]/select'
  element :data_emissao_inicio_input, '#formAcompanhar\:dataInicioInputDate'
  element :data_emissao_fim_input, '#formAcompanhar\:dataFimInputDate'
  element :btn_pesquisar, 'input[value="Pesquisar"]'
  element :btn_adicionar_porte_fila, :xpath, '//*[@id="formAcompanhar:dtPortes:tb"]/tr[1]/td[8]/a'
  element :btn_adicionar_registro_fila, :xpath, '//*[@id="formAcompanhar:dtRegistros:tb"]/tr[1]/td[8]/a'
  element :btn_imprimir, 'input[value="Imprimir"]'

  #FORMULÁRIO EMISSÃO REGISTRO ARMA DE FOGO
  element :check_arma_fogo_input, 'input[value="ARMA_DE_FOGO"]'
  element :check_dados_registro_input, 'input[value="DADOS_DO_REGISTRO"]'
  element :check_dados_proprietario_input, 'input[value="DADOS_DO_PROPRIETARIO"]'

  element :nr_serie_input, :xpath, '//*[text()[contains(.,"Nº de Série:")]]/../../input'
  element :nr_cad_input, :xpath, '//*[text()[contains(.,"Nº CAD Sinarm:")]]/../../div[2]/input'
  element :nr_registro_input, :xpath, '//*[text()[contains(.,"Nº do Registro:")]]/../../div[2]/input'
  element :data_emissao_inicio_registro_input, '#formAcompanhar\:dataInicio2InputDate'
  element :data_emissao_fim_registro_input, '#formAcompanhar\:dataFim2InputDate'
  element :cpf_cnpj_proprietario, :xpath, '//*[text()[contains(.,"CPF/CNPJ:")]]/../input'

  element :cpf_input, ".mask-cpf"
  element :radio_servidor, "input[type='radio']"
  element :btn_selecionar_pessoa, '#formPessoaFisica\:selecionarPessoa'
  element :seleciona_abrangencia, '#formPessoaFisica\:idAbrangencia'
  element :btn_adicionar_abrangencia, 'input[value="Adicionar"]'
  element :input_validade, '#formPessoaFisica\:validadeInputDate'
  element :input_anexar_arquivo, '#formPessoaFisica\:uploadArquivos\:file'
  element :btn_criar_porte, 'input[value="Criar Porte"]'
  element :upload_concluido, 'input[value="PDF_TESTE.pdf"]'
  elements :nr_porte, :xpath, "//*[text()[contains(.,'FUNCIONAL')]]/../td[2]"

  def acessar_confeccionar_registro_porte
    acessar_home
    menu_confeccionar_registro_porte
  end

  def seleciona_tipo_documento(tipo_documento)
    tipo_documento_select.select(tipo_documento)
  end

  def seleciona_unidade_expedidora(unidade_expedidora)
    unidade_expedidora_select.select(unidade_expedidora)
  end

  def acessar_inclusao_porte_funcional
    acessar_home
    menu_incluir_porte_funcional
  end

  def pesquisar_servidor
    @cpf = recuperar_dados("features/arquivos/massa_teste/cpf_servidor_publico.txt")
    cpf_input.click.set(@cpf[0].to_s)

    puts "Clicando em Pesquisar"
    btn_pesquisar.click
  end

  def selecionar_servidor
    puts "Selecionando servidor"
    wait_until_radio_servidor_visible
    radio_servidor.click
    sleep(0.5)
    btn_selecionar_pessoa.click
  end

  def preencher_dados_porte
    puts "Preenchendo dados do porte"
    seleciona_abrangencia.select("Nacional")
    btn_adicionar_abrangencia.click
    input_validade.click.set("31122028")
    anexar(input_anexar_arquivo(visible: false)["id"], "features/arquivos/PDF_TESTE.pdf")
  end

  def clicar_botao_criar_porte
    puts "Clicando botão criar porte"
    wait_until_upload_concluido_visible
    btn_criar_porte.click
  end

  def validar_cadastro_porte
    page.assert_text("Inclusão efetuada com sucesso!")
    @nr_porte = nr_porte[0].text
    gravar_dados("features/arquivos/massa_teste/numero_porte.txt", @nr_porte)
  end

  def preencher_parametros_dados_porte
    seleciona_tipo_documento("Porte de Arma de Fogo")
    check_dados_porte_input.click
    @nr_porte = recuperar_dados("features/arquivos/massa_teste/numero_porte.txt")
    nr_porte_input.click.set(@nr_porte[0].to_s)
    btn_pesquisar.click
    
  end
end
