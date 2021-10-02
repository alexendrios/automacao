class IncluirArmaPage < PageHelper

  #MAPEAMENTO DE FORMULÁRIO DE INCLUSÃO DE ARMA DE FOGO
  element :cnpj_input, '#formPesquisarPessoa\:txt-cnpj'
  element :cpf_input, '#formPesquisarPessoa\:txt-cpf'
  element :btn_pesquisar, 'input[value="Pesquisar"]'
  element :btn_incluir_arma, 'a[title="Incluir Arma"]'
  element :numero_serie_input, '#formDadosArma\:campoNumeroSerie'
  element :btn_adicionar_nr_serie, 'input[value="Adicionar"]'
  element :marca_select, '#formDadosArma\:campoMarca'
  element :calibre_select, '#formDadosArma\:campoCalibre'
  element :especie_select, '#formDadosArma\:campoEspecie'
  element :modelo_select, '#formDadosArma\:modelo'
  element :btn_adicionar_arma, 'input[value="Adicionar"]'
  element :btn_associar_ocorrencia, 'input[value="Associar Ocorrência"]'
  element :btn_salvar, 'input[value="Salvar"]'

  #MAPEAMENTO DE FORMULÁRIO DE INCLUSÃO DE OCORRENCIA
  element :tipo_ocorrencia_select, :xpath, '//*[text()[contains(.,"Tipo de Ocorrência:")]]/../select'
  element :uf_ocorrencia_select, :xpath, '//*[text()[contains(.,"UF:")]]/../select'
  element :instituicao_ocorrencia_select, :xpath, '//*[text()[contains(.,"Instituição:")]]/../select'
  element :numero_ocorrencia_input, :xpath, '//*[@id="formAcompanhar"]/div/fieldset/div/div[1]/div[2]/input'
  element :municipio_ocorrencia_select, :xpath, '//*[text()[contains(.,"Município:")]]/../select'
  element :data_ocorrencia_input, 'input[name*="InputDate"]'
  element :unidade_ocorrencia_input, :xpath, '//*[text()[contains(.,"Unidade:")]]/../input'
  element :descricao_ocorrencia_areatext, '#formAcompanhar\:idDescricaoOcorrencia'
  element :btn_salvar_ocorrencia, 'input[value="Salvar"]'

  #MAPEAMENTO DE PESQUISA DE ARMA DE FOGO
  element :pesquisar_nr_serie_input, :xpath, '//*[text()[contains(.,"Nº de Série:")]]/../input'
  element :pesquisar_nr_cad_sinarm_input, :xpath, '//*[text()[contains(.,"Nº de CAD Sinarm:")]]/../input'
  element :pesquisar_nr_registro_input, :xpath, '//*[text()[contains(.,"Nº de Registro:")]]/../input'
  element :pesquisar_especie_select, :xpath, '//*[text()[contains(.,"Espécie:")]]/../select'
  element :pesquisar_marca_select, :xpath, '//*[text()[contains(.,"Marca:")]]/../select'
  element :pesquisar_calibre_select, :xpath, '//*[text()[contains(.,"Calibre:")]]/../select'
  element :pesquisar_btn, 'input[value="Pesquisar"]'

  #MAPEAMENTO BOTÃO DETALHAR ARMA
  element :btn_detalhar_registro, 'a[title="Detalhar Registro"]'

  #MAPEAMENTO BOTÃO ALTERAR ARMA
  element :btn_alterar_registro, 'a[title="Alterar Registro"]'

  #MAPEAMENTO DE FORMULÁRIO DE INCLUSÃO DE ARMA DE FOGO
  element :alterar_numero_serie_input, :xpath, '//*[@id="formAlterarArma:camposAlteracaoArma"]/div/div[1]/div[1]/input'
  element :alterar_marca_select, :xpath, '//*[@id="formAlterarArma:camposAlteracaoArma"]/div/div[2]/div[1]/select'
  element :alterar_calibre_select, :xpath, '//*[@id="formAlterarArma:camposAlteracaoArma"]/div/div[3]/div/select'
  element :alterar_especie_select, :xpath, '//*[@id="formAlterarArma:camposAlteracaoArma"]/div/div[2]/div[2]/select'
  element :alterar_modelo_select, 'select[name="formAlterarArma:modelo"]'
  element :alterar_btn_salvar, '#formAlterarArma\:buttonSalvar'
  element :motivo_areatext, 'textarea[name*= "id-motivo"]'
  element :btn_salvar_alteracao, 'input[name*= "salvar"][onclick*="modalMotivacao"]'

  #MÉTODOS PARA ACESSAR FORMULARIOS
  def acessar_form_revendedor
    acessar_home
    menu_incluir_arma_por_revendedor
  end

  def acessar_form_proprietario
    acessar_home
    menu_incluir_arma_por_proprietario
  end

  def acessar_form_ocorrencia
    acessar_home
    menu_incluir_arma_por_ocorrencia
  end

  def acessar_form_consulta
    acessar_home
    menu_consultar_arma_fogo
  end

  #MÉTODO PARA ESCOLHER TIPO DE PESSOA
  def escolha_tipo_pessoa(tipo_pessoa)
    choose(tipo_pessoa)
  end

  #MÉTODO PARA PREENCHER NÚMEROS ALEATÓRIOS DE SÉRIE E OCORRÊNCIA
  def preencher_numero_serie
    numero_serie_input.click.set(nr_serie_random)
  end

  def alterar_numero_serie
    alterar_numero_serie_input.click.set(nr_serie_random)
  end

  def preencher_numero_ocorrencia
    numero_ocorrencia_input.click.set(nr_ocorrencia_random)
  end

  #MÉTODOS PARA SELECTS
  def seleciona_tipo_ocorrencia(tipo_ocorrencia)
    tipo_ocorrencia_select.select(tipo_ocorrencia)
  end

  def seleciona_uf_ocorrencia(uf_ocorrencia)
    uf_ocorrencia_select.select(uf_ocorrencia)
  end

  def seleciona_instituicao_ocorrencia(instituicao_ocorrencia)
    instituicao_ocorrencia_select.select(instituicao_ocorrencia)
  end

  def seleciona_municipio_ocorrencia(municipio_ocorrencia)
    municipio_ocorrencia_select.select(municipio_ocorrencia)
  end

  def seleciona_marca_arma(marca)
    marca_select.select(marca)
  end

  def seleciona_calibre_arma(calibre)
    calibre_select.select(calibre)
  end

  def seleciona_especie_arma(especie)
    especie_select.select(especie)
  end

  def seleciona_modelo_arma(modelo)
    modelo_select.select(modelo)
  end

  def seleciona_tipo_ocorrencia(tipo_ocorrencia)
    tipo_ocorrencia_select.select(tipo_ocorrencia)
  end

  def pesquisa_seleciona_especie(especie)
    pesquisar_especie_select.select(especie)
  end

  def pesquisa_seleciona_marca(marca)
    pesquisar_marca_select.select(marca)
  end

  def pesquisa_seleciona_calibre(calibre)
    pesquisar_calibre_select.select(calibre)
  end

  def alterar_marca_arma(marca)
    alterar_marca_select.select(marca)
  end

  def alterar_calibre_arma(calibre)
    alterar_calibre_select.select(calibre)
  end

  def alterar_especie_arma(especie)
    alterar_especie_select.select(especie)
  end

  def alterar_modelo_arma(modelo)
    alterar_modelo_select.select(modelo)
  end

  def informar_numero_serie(nome_arquivo)
    @codigo = recuperar_dados("features/arquivos/requerimentos/#{nome_arquivo}")
    pesquisar_nr_serie_input.click.set(@codigo[0].to_s)
  end

  def informar_numero_serie_editar(nome_arquivo)
    @codigo = recuperar_dados("features/arquivos/requerimentos/#{nome_arquivo}")
    pesquisar_nr_serie_input.click.set(@codigo[0].to_s)
  end

  #MÉTODO PARA VALIDAR CAMPOS DE M=MARCA, E=ESPECIE, C=CALIBRE
  def validar_campos_obrigatórios_MEC
    page.assert_text("O campo Marca é obrigatório.") #VALIDAÇÃO CAMPO MARCA
    page.assert_text("O campo Espécie é obrigatório.") #VALIDAÇÃO CAMPO ESPÉCIE
    page.assert_text("O campo Calibre é obrigatório.") #VALIDAÇÃO CAMPO CALIBRE
  end

  #MÉTODO PARA VALIDAR CAMPOS DE M=MARCA, E=ESPECIE, C=CALIBRE, M=MODELO
  def validar_campos_obrigatórios_MECD
    page.assert_text("O campo Marca é obrigatório.") #VALIDAÇÃO CAMPO MARCA
    page.assert_text("O campo Espcie é obrigatório.") #VALIDAÇÃO CAMPO ESPÉCIE ## ESTÁ ESCRITO'ESPCIE' NO SISTEMA
    page.assert_text("O campo Calibre é obrigatório.") #VALIDAÇÃO CAMPO CALIBRE
    page.assert_text("O campo Modelo é obrigatório.") #VALIDAÇÃO CAMPO MODELO
    page.assert_text("O campo Numero de Serie é obrigatório.") #VALIDAÇÃO CAMPO NUMERO DE SERIE
  end

  #MÉTODO PARA VALIDAR CAMPOS OBRIGATÓRIOS DE UMA OCORRÊNCIA
  def validar_campos_obrigatórios_ocorrencia
    page.assert_text("O campo Tipo de Ocorrência é obrigatório.") #VALIDAÇÃO CAMPO TIPO OCORRÊNCIA
    page.assert_text("O campo Número da Ocorrência é obrigatório.") #VALIDAÇÃO CAMPO NÚMERO DA OCORRENCIA
    page.assert_text("O campo UF é obrigatório.") #VALIDAÇÃO CAMPO UF
    page.assert_text("O campo Município é obrigatório.") #VALIDAÇÃO CAMPO MUNICÍPIO
    page.assert_text("O campo Instituição é obrigatório.") #VALIDAÇÃO CAMPO INSTITUIÇÃO
    page.assert_text("O campo Unidade é obrigatório.") #VALIDAÇÃO CAMPO UNIDADE
    page.assert_text("O campo Data de Registro da Ocorrência é obrigatório.") #VALIDAÇÃO CAMPO DATA DE REGISTRO DA OCORRÊNCIA
    page.assert_text("O campo Descrição da Ocorrência é obrigatório.") #VALIDAÇÃO CAMPO DESCRIÇÃO OCORRENCIA
  end

  def preencher_cnpj_revendedor
    @cnpj = recuperar_dados("features/arquivos/massa_teste/cnpj_revendedor.txt")
    cnpj_input.click.set(@cnpj[0].to_s)
    btn_pesquisar.click
  end

  def preencher_cpf_proprietario
    @cpf = recuperar_dados("features/arquivos/massa_teste/cpf_servidor_publico.txt")
    cpf_input.click.set(@cpf[0].to_s)
    btn_pesquisar.click
  end

  def preencher_cnpj_proprietario
    @cnpj = recuperar_dados("features/arquivos/massa_teste/cnpj_fabricante.txt")
    cnpj_input.click.set(@cnpj[0].to_s)
    btn_pesquisar.click
  end

  def preencher_parametros_para_consulta_arma
    @nr_serie_arma = recuperar_dados("features/arquivos/massa_teste/nr_serie_arma.txt")
    pesquisar_nr_serie_input.click.set(@nr_serie_arma[0].to_s)
    pesquisar_btn.click
  end

  def preencher_parametros_para_consulta_arma_editada
    @nr_serie_arma = recuperar_dados("features/arquivos/massa_teste/nr_serie_arma_editar.txt")
    pesquisar_nr_serie_input.click.set(@nr_serie_arma[0].to_s)
    pesquisar_btn.click
  end

  def clicar_botao_incluir_arma
    btn_incluir_arma.click
  end

  def preencher_dados_arma_modelo_branco
    preencher_numero_serie
    btn_adicionar_nr_serie.click
    seleciona_marca_arma("TAURUS (FORJAS TAURUS S.A.)")
    seleciona_calibre_arma(".380")
    seleciona_especie_arma("Pistola")
    btn_salvar.click
    aguardar_carregamento
  end
end
