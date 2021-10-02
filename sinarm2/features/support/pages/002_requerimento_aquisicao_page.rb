class RequerimentoAquisicaoPage < PageHelper
  include RSpec::Matchers

  set_url "http://#{IP_AMBIENTE}/sinarm-internet/faces/publico/incluirReqAquisicaoArmaFogo/incluirReqAquisicaoArmaFogo.seam"

  #desenv
  #set_url "http://10.2.96.36:8480/sinarm-internet/faces/publico/incluirReqAquisicaoArmaFogo/incluirReqAquisicaoArmaFogo.seam"

  # prehom
  #set_url 'http://10.2.96.51:8480/sinarm-internet/faces/publico/incluirReqAquisicaoArmaFogo/incluirReqAquisicaoArmaFogo.seam'

  #################Categoria elementos pessoa Fisica######################

  element :ajax_status, "#statusAjax-ajaxStatusMPContainer"

  ##Categoria Requerimento PF
  element :categorias_pf_select, '#formGeral\:formTabIdentificacao\:categoriasPF'
  element :categoria_servidor_publico, '#formGeral\:formTabIdentificacao\:categoriasPF option[value="2"]'

  #Dados pessoais PF
  element :nome_input, '#formGeral\:formTabIdentificacao\:nomePF'
  element :cpf_input, '#formGeral\:formTabIdentificacao\:numeroCPF'
  element :nome_pai_input, '#formGeral\:formTabIdentificacao\:nomePaiPf'
  element :nome_mae_input, '#formGeral\:formTabIdentificacao\:nomeMae'
  element :data_nascimento_input, '#formGeral\:formTabIdentificacao\:dataNascInputDate'
  element :sexo_select, '#formGeral\:formTabIdentificacao\:sex'
  element :pais_select, '#formGeral\:formTabIdentificacao\:paisNasc'
  element :uf_nascimento_select, '#formGeral\:formTabIdentificacao\:ufNasc'
  element :municipio_nascimento_select, '#formGeral\:formTabIdentificacao\:municNasc'
  element :rg_input, '#formGeral\:formTabIdentificacao\:numRG'
  element :data_expedicao_input, '#formGeral\:formTabIdentificacao\:dtExpRGInputDate'
  element :orgao_expedicao_input, '#formGeral\:formTabIdentificacao\:orgaoExpRG'
  element :uf_expedicao_select, '#formGeral\:formTabIdentificacao\:ufExpeRG'
  element :estado_civil_select, '#formGeral\:formTabIdentificacao\:estadoCivil'
  element :titulo_input, '#formGeral\:formTabIdentificacao\:tituloEle'
  element :profissao_select, '#formGeral\:formTabIdentificacao\:prof'
  element :email_input, '#formGeral\:formTabIdentificacao\:email'
  # element :receber_atulizacoes_check,'input[id*="checkEmail"]'

  #Dados residenciais PF
  element :cep_input, '#formGeral\:formTabIdentificacao\:cepRes'
  element :tipo_endereco_pf_select, '#formGeral\:formTabIdentificacao\:tipoEndResidencial'
  element :logradouro_input, '#formGeral\:formTabIdentificacao\:logradouroRes'
  element :numero_endereco_input, '#formGeral\:formTabIdentificacao\:numRes'
  element :complemento_input, '#formGeral\:formTabIdentificacao\:complRes'
  element :bairro_input, '#formGeral\:formTabIdentificacao\:bairroRes'
  element :uf_endereco_select, '#formGeral\:formTabIdentificacao\:ufRes'
  element :municipio_endereco_select, '#formGeral\:formTabIdentificacao\:municipioRes'
  element :ddd_fixo, '#formGeral\:formTabIdentificacao\:dddTelFixoComerRes'
  element :telefone_fixo, '#formGeral\:formTabIdentificacao\:telFixoComerRes'
  element :ddd_celular_input, '#formGeral\:formTabIdentificacao\:dddTelCelRes'
  element :celular_input, '#formGeral\:formTabIdentificacao\:telCelRes'

  #Dados profissionais(Servidor Publico obrigatorio) PF
  element :ocupacao_orgao_select, '#formGeral\:formTabIdentificacao\:orgaoOcup'
  element :cnpj_orgao_input, '#formGeral\:formTabIdentificacao\:cnpjOrgao'
  element :nome_orgao_input, '#formGeral\:formTabIdentificacao\:nomeOrgao'

  #Dados da arma
  element :especie_arma_select, '#formGeral\:formDadosArma\:especieArma'
  element :calibre_arma_select, '#formGeral\:formDadosArma\:calibreArma'

  #Declaração necessidade PF
  element :necessidade_areatxt, :xpath, '//*[text()[contains(.,"Declare os motivos")]]/../div[1]/textarea'

  element :impedimento_areatxt, :xpath, '//*[text()[contains(.,"Declare se possui lugar ")]]/../div[1]/textarea'

  #Termo de Responsabilidade PF
  element :veracidade_check, '#formGeral\:termoResponsabilidade\:declaracaoVeracidade'
  element :uf_unidade_atendimento, '#formGeral\:termoResponsabilidade\:ufUnidadeAtendimento'
  element :municipio_atendimento_select, '#formGeral\:termoResponsabilidade\:municipiosUnidade'
  element :unidade_atendimento_select, '#formGeral\:termoResponsabilidade\:postoAtendimento'

  #Botões de navegação do formulario
  element :btn_proximo, 'div #formGeral\:proximo'
  element :btn_emitir, '#formGeral\:emitirReq'

  #################Elementos pessoa Juridica######################

  #Identificao PJ
  element :categorias_pj_select, '#formGeral\:formTabIdentificacao\:categoriasPJ'
  element :cnpj_juridica_input, '#formGeral\:formTabIdentificacao\:cnpjPJ'
  element :razao_social_input, '#formGeral\:formTabIdentificacao\:razaoSocPJ'
  element :cep_juridica_input, '#formGeral\:formTabIdentificacao\:cepPJ'
  element :tipo_endereco_juridica_select, '#formGeral\:formTabIdentificacao\:tipoEndPJ'
  element :logradouro_juridica_input, '#formGeral\:formTabIdentificacao\:logradouroPJ'
  element :numero_juridica_input, '#formGeral\:formTabIdentificacao\:numeroEndPJ'
  element :bairro_juridica_input, '#formGeral\:formTabIdentificacao\:bairroEndPJ'
  element :uf_juridica_select, '#formGeral\:formTabIdentificacao\:ufPJ'
  element :municipio_juridica_select, '#formGeral\:formTabIdentificacao\:municipioPJ'
  element :ddd_telefone_juridica_input, '#formGeral\:formTabIdentificacao\:dddComPJ'
  element :telefone_juridica_input, '#formGeral\:formTabIdentificacao\:telComPJ'
  element :email_juridica_input, '#formGeral\:formTabIdentificacao\:emailPJ'

  #Declaração necessidade PJ
  element :necessidade_juridica_check, :xpath, '//*[text()[contains(.,"Utilize sua arma")]]/../input[1]'

  #Termo Resposabilidade PJ
  element :veracidade_informacao_juridica_input, '#formGeral\:termoResponsabilidade\:declaracaoVeracidade'
  element :uf_atendimento_juridica_select, '#formGeral\:termoResponsabilidade\:ufUnidadeAtendimento'
  element :municipio_atendimento_juridica_select, '#formGeral\:termoResponsabilidade\:municipiosUnidade'
  element :unidade_atendimento_juridica_select, '#formGeral\:termoResponsabilidade\:postoAtendimento'

  elements :menssagens_erros, "dt.mensagem_erro"

  def aguardar
    wait_until_ajax_status_invisible
  end

  def preencher_aba_identificacao
    puts "\nPreenchendo dados da aba Identificação"
    preencher_dados_pessoais
    preencher_dados_residenciais
    preencher_dados_servidor_publico

    puts "\nPassando para a aba Dados da arma"
    btn_proximo.click
    aguardar_carregamento
  end

  def preencher_dados_pessoais(_dados = {})
    nome_input.click.set("Paulo Cauã Nunes")
    cpf_input.click.set("89905839186")
    nome_pai_input.click.set("Matheus Augusto Filipe Nunes")
    nome_mae_input.click.set("Raquel Aline Silvana")
    data_nascimento_input.click.set("02021989")
    seleciona_sexo("Masculino")
    seleciona_pais("Brasil")
    seleciona_uf_nascimento("DF")
    seleciona_municipio_nascimento("Brasília")
    rg_input.click.set("159086255")
    data_expedicao_input.click.set("10102010")
    orgao_expedicao_input.click.set("SSP")
    seleciona_uf_expedicao("DF")
    seleciona_estado_civil("Solteiro")
    titulo_input.click.set("376814262089")
    seleciona_profissao("ADMINISTRADOR")
    #binding.pry
    #receber_atulizacoes_check.click
    email_input.click.set("b1101747@urhen.com")
  end

  def preencher_dados_residenciais(_dados = {})
    cep_input.click.set("72302409")
    seleciona_tipo_endereco_pf("Residencial")
    logradouro_input.click.set("QR 112")
    numero_endereco_input.click.set("822")
    complemento_input.click.set("Conjunto 8")
    bairro_input.click.set("Taguatinga")
    seleciona_uf_endereco("DF")
    seleciona_municipio_endereco("Brasília")
    ddd_fixo.click.set("61")
    telefone_fixo.click.set("6136289287")
    ddd_celular_input.click.set("61")
    celular_input.click.set("995746286")
  end

  def preencher_dados_servidor_publico
    puts "\nPreenchendo dados Profissionais para Servidor Público"

    if categoria_servidor_publico.selected?
      seleciona_ocupacao_orgao("Policial Federal")
      cnpj_orgao_input.click.set("45749345000180")
      nome_orgao_input.click.set("Departamento Polícia Federal")
    end
  end

  def preencher_aba_dados_arma(_dados = {})
    puts "\nPreenchendo dados da aba Dados da Arma"
    seleciona_especie("Pistola")
    seleciona_calibre(".380")

    puts "\nPassando para a aba Declaração de Efetiva Necessidade"
    btn_proximo.click
    aguardar_carregamento
  end

  def preencher_aba_declaracao_necessidade(_dados = {})
    puts "\nPreenchendo dados da aba Declaração de Efetiva Necessidade"

    @necessidade = "Grande índice de crimes contra o patrimônio," +
                   "roubo seguido de morte(latrocínios)," +
                   "bem como os de elevados índices de crimes dolosos contra a vida(homicídios)."

    @impedimento = "Declaro Não habitam"
    # binding.pry
    necessidade_areatxt.click.set(@necessidade.to_s)
    impedimento_areatxt.click.set(@impedimento)

    puts "\nPassando para a aba Termo de Necessidade"
    btn_proximo.click
  end

  def preencher_aba_termo_responsabilidade
    puts "\nPreenchendo aba Termo de Responsabilidade"

    veracidade_check.click
    seleciona_uf_atendimento("DF")
    seleciona_municipio_atendimento("Brasília")
    seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
    informar_captcha
  end

  def dados_invalidos_identificacao(tipo_formulario)
    if tipo_formulario == "PF"
      puts "\nPreenchendo campos da aba Identificação com dados inválidos para validação"
      nome_input.click.set("Paulo Cauã Nunes")
      puts "\nPreenchendo CPF inválido"
      cpf_input.click.set("00000000000")
      nome_pai_input.click.set("Matheus Augusto Filipe Nunes")
      nome_mae_input.click.set("Raquel Aline Silvana")
      puts "\nPreenchendo data de nascimento inválida"
      data_nascimento_input.click.set("49151990")
      seleciona_sexo("Masculino")
      seleciona_pais("Brasil")
      seleciona_uf_nascimento("DF")
      seleciona_municipio_nascimento("Brasília")
      rg_input.click.set("159086255")
      data_expedicao_input.click.set("49151990")
      orgao_expedicao_input.click.set("SSP")
      seleciona_uf_expedicao("DF")
      seleciona_estado_civil("Solteiro")
      titulo_input.click.set("376814262089")
      seleciona_profissao("ADMINISTRADOR")
      # receber_atulizacoes_check.click
      puts "\nPreenchendo email inválido"
      email_input.click.set("b1101747urhen.com")

      # Dados residênciais
      puts "\nPreenchendo CEP inválido"
      cep_input.click.set("100000")
      seleciona_tipo_endereco_pf("Residencial")
      logradouro_input.click.set("QR 112")
      numero_endereco_input.click.set("822")
      complemento_input.click.set("Conjunto 8")
      bairro_input.click.set("Taguatinga")
      seleciona_uf_endereco("DF")
      seleciona_municipio_endereco("Brasília")
      ddd_fixo.click.set("61")
      telefone_fixo.click.set("6136289287")
      ddd_celular_input.click.set("61")
      celular_input.click.set("995746286")

      puts "\nPreenchendo dados Profissionais inválidos para Servidor Público"

      if categoria_servidor_publico.selected?
        seleciona_ocupacao_orgao("Policial Federal")
        cnpj_orgao_input.click.set("45743453458000")
        nome_orgao_input.click.set("Departamento Polícia Federal")
      end
    else

      ##### Dados inválidos para Pessoa Juridica #####
      puts "\nPreenchendo CNPJ inválido"
      cnpj_juridica_input.click.set("00730680000000")
      razao_social_input.click.set("Stefanini")
      puts "\nPreenchendo CEP inválido"
      cep_juridica_input.click.set("100000")
      seleciona_tipo_endereco_pj("Comercial")
      logradouro_juridica_input.click.set("Setor Comercial Norte")
      numero_juridica_input.click.set("01")
      bairro_juridica_input.click.set("Asa Norte")
      seleciona_uf_pj("DF")
      seleciona_municipio_pj("Brasília")
      ddd_telefone_juridica_input.click.set("61")
      telefone_juridica_input.click.set("33330005")
      # receber_atulizacoes_check.click
      puts "\nPreenchendo email inválido"
      email_juridica_input.click.set("b606779urhen.com")
    end
  end # Fim dados_invalidos_identificacao

  def emitir_requerimento
    puts "\nClicando em Emitir Requerimento"
    btn_emitir.click
    aguardar_carregamento
  end

  #### Selecionar opções ####
  def escolha_tipo_pessoa(tipo_pessoa)
    choose(tipo_pessoa)
  end

  def seleciona_categoria_pf(categoria)
    categorias_pf_select.select(categoria)
    aguardar_carregamento
  end

  def seleciona_categoria_pj(categoria)
    categorias_pj_select.select(categoria)
    aguardar_carregamento
  end

  def seleciona_sexo(sexo)
    sexo_select.select(sexo)
  end

  def seleciona_pais(pais)
    pais_select.select(pais)
  end

  def seleciona_uf_nascimento(uf)
    uf_nascimento_select.select(uf)
  end

  def seleciona_municipio_nascimento(municipio_nascimento)
    municipio_nascimento_select.select(municipio_nascimento)
  end

  def seleciona_uf_expedicao(uf_expedicao)
    uf_expedicao_select.select(uf_expedicao)
  end

  def seleciona_estado_civil(estado_civil)
    estado_civil_select.select(estado_civil)
  end

  def seleciona_profissao(profissao)
    profissao_select.select(profissao)
  end

  def seleciona_tipo_endereco_pf(tipo_endereco)
    tipo_endereco_pf_select.select(tipo_endereco)
  end

  def seleciona_tipo_endereco_pj(tipo_endereco)
    tipo_endereco_juridica_select.select(tipo_endereco)
  end

  def seleciona_uf_endereco(uf_endereco)
    uf_endereco_select.select(uf_endereco)
  end

  def seleciona_uf_pj(uf_pj)
    uf_juridica_select.select(uf_pj)
  end

  def seleciona_municipio_endereco(municipio_endereco)
    municipio_endereco_select.select(municipio_endereco)
  end

  def seleciona_municipio_pj(municipio_pj)
    municipio_juridica_select.select(municipio_pj)
  end

  ###### Campos profissionais(Servidor Publico obrigatorio) ######
  def seleciona_ocupacao_orgao(orgao_ocupacao)
    ocupacao_orgao_select.select(orgao_ocupacao)
  end

  def seleciona_especie(especie)
    if (has_especie_arma_select?(wait: 5))
      especie_arma_select.select(especie)
    end
  end

  def seleciona_calibre(calibre)
    calibre_arma_select.select(calibre)
  end

  def declarar_necessidade(necessidade, impedimento)
    necessidade_areatxt.click.set(necessidade.to_s)
    impedimento_areatxt.click.set(impedimento)
  end

  def seleciona_uf_atendimento(uf)
    uf_unidade_atendimento.select(uf)
  end

  def seleciona_municipio_atendimento(municipio_atendimento)
    municipio_atendimento_select.select(municipio_atendimento)
  end

  def seleciona_unidade_atendimento(unidade_atendimento)
    unidade_atendimento_select.select(unidade_atendimento)
  end

  # Armazena todos os erros com estilo "dt.mensagem_erro"
  # em uma lista
  def obtem_msg_erros
    @erros = []
    menssagens_erros.each do |msg|
      @erros << msg.text
    end
    @erros
  end

  def validar_mensagens(mensagens)
    page.scroll_to(0, 0)

    mensagens.each do |msg|
      puts msg
      puts expect(obtem_msg_erros).to include(msg)
    end
  end
end
