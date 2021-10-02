class RequerimentoRegistroPage < PageHelper
  set_url "http://#{IP_AMBIENTE}/sinarm-internet/faces/publico/incluirReqRegistroArmaFogo/consultarRequerimentoRegistro.seam"

  # desenv
  #set_url "http://10.2.96.36:8480/sinarm-internet/faces/publico/incluirReqRegistroArmaFogo/consultarRequerimentoRegistro.seam"

  # prehom
  #set_url "http://10.2.96.51:8480/sinarm-internet/faces/publico/incluirReqRegistroArmaFogo/consultarRequerimentoRegistro.seam"

  #elementos para buscar nr_serie do estoque
  element :cnpj_serie, 'input[id*="formPessoaJuridica:txt-cnpj"]'
  element :btn_detalhar_PJ, 'a[id*="detalharPessoaJuridica"]'
  element :detalhamento_PJ, 'div[id*="tela-resultado"]'
  element :aba_estoque, 'td[id*="EstoqueArmasPJ_cell"]'
  element :tabela_estoque, 'table[id$="dataTable-estoque-armas"]'
  element :marca_estoque, 'select[id*="marcaArmaPessoa"]'
  element :especie_estoque, 'select[id*="especieArmaPessoa"]'
  element :calibre_arma, 'select[id*="calibreArmaPessoa"]'
  elements :nr_serie, :xpath, '//*[@id="formDetalhaPJ:dataTable-estoque-armas"]/tbody/tr/td/label'
  elements :nr_cad, :xpath, '//*[@id="formDetalhaPJ:dataTable-estoque-armas"]/tbody/tr/td/label'

  #Categoria registro PF
  element :categoria_select, 'select[name="j_id35\:j_id45"]'

  #Categoria registro PJ
  element :categoria_pj_select, 'select[name="j_id35\:j_id49"]'

  #Categoria registro PJ(Órgão público com taxa)
  element :categoria_orgao_com_taxa_option, '#j_id35\:divReqRegArmaFogo > div:nth-child(1) > select > option:nth-child(7)'

  #Categoria registro PJ(Órgão público sem taxa)
  element :categoria_orgao_sem_taxa_option, '#j_id35\:divReqRegArmaFogo > div:nth-child(1) > select > option:nth-child(8)'

  #Dados pessoais PF
  element :cpf_input, "input.mask-cpf"

  #Dados pessoais PJ
  element :cnpj_input, "input.mask-cnpj"

  #Especie Autorizacao PF
  element :sem_autorizacao_check, 'input[value="REGISTRO_SEM_AUTORIZACAO_PREVIA"]'
  element :com_autorizacao_check, '#j_id35\:j_id75\:0'

  #Codigo Autorizacao
  element :codigo_autorizacao_input, 'div[id*="codigo"] input'

  #Botões formulario
  element :btn_pesquisar, 'input[value*="Pesquisar"]'
  element :btn_proxima, 'input[value^="Próxima"]'

  element :btn_adicionar, 'input[value*="Adicionar à lista"]'
  element :btn_emitir, 'input[value*="Emitir Requerimento"]'

  #################Formulário Identificacao pessoa física######################

  #Dados pessoais PF

  element :nome_input, '#formGeral\:nomePF'
  element :nome_pai_input, '#formGeral\:nomePaiPf'
  element :nome_mae_input, '#formGeral\:nomeMae'
  element :data_nascimento_input, '#formGeral\:dataNascInputDate'
  element :sexo_select, '#formGeral\:sex'
  element :pais_select, '#formGeral\:paisNasc'
  element :uf_nascimento_select, '#formGeral\:ufNasc'
  element :municipio_nascimento_select, '#formGeral\:municNasc'
  element :rg_input, '#formGeral\:numRG'
  element :data_expedicao_input, '#formGeral\:dtExpRGInputDate'
  element :orgao_expedicao_input, '#formGeral\:orgaoExpRG'
  element :uf_expedicao_select, '#formGeral\:ufExpeRG'
  element :estado_civil_select, '#formGeral\:estadoCivil'
  element :titulo_input, '#formGeral\:tituloEle'
  element :profissao_select, '#formGeral\:prof'
  element :email_input, '#formGeral\:email'

  #Dados pessoais com codigo de autorizacao
  element :alteracoes_endereco_check, 'input[value="AUTORIZACAO_AQUISICAO_POLICIA_FEDERAL"]'

  #Dados residenciais PF
  element :cep_input, '#formGeral\:cepRes'
  element :tipo_endereco_pf_select, '#formGeral\:tipoEndResidencial'
  element :logradouro_input, '#formGeral\:logradouroRes'
  element :numero_endereco_input, '#formGeral\:numRes'
  element :bairro_input, '#formGeral\:bairroRes'
  element :uf_endereco_select, '#formGeral\:ufRes'
  element :municipio_endereco_select, '#formGeral\:municipioRes'
  element :ddd_celular_input, '#formGeral\:dddTelCelRes'
  element :celular_input, '#formGeral\:telCelRes'

  #Dados da Arma PF
  element :serie_arma_input, 'td[id$="DadosArma"] input[maxlength="15"]'
  element :especie_arma_select, 'select[onchange*="especie"]'
  element :marca_arma_select, 'select[onchange*="marca"]'
  element :calibre_arma_select, 'select[onchange*="calibre"]'
  element :modelo_arma_input, 'div[id*="ModeloArma"] input'
  element :nota_fiscal_input, :xpath, '//*[@id="formGeral:cbProdutoArma"]//*[text()[contains(.,"Número da Nota Fiscal")]]/../../input'
  element :data_nota_fiscal_input, 'span[id*="formGeral"] input[id$="InputDate"]'
  element :cnpj_revendedor_input, "input.mask-cnpj"

  #Declaração Efetiva necessidade PF
  element :efetiva_necessidade_check, 'input[id*="CheckPerguntaObjetivaRegistro"]'

  #Termo Resposabilidade PF
  element :veracidade_informacao_input, '#formGeral\:termoResponsabilidade\:declaracaoVeracidade'
  element :uf_atendimento_select, '#formGeral\:termoResponsabilidade\:ufUnidadeAtendimento'
  element :municipio_atendimento_select, '#formGeral\:termoResponsabilidade\:municipiosUnidade'
  element :unidade_atendimento_select, '#formGeral\:termoResponsabilidade\:postoAtendimento'

  #################Formulário Identificacao pessoa jurídica######################

  #Dados pessoais PJ
  element :razao_social_input, '#formGeral\:razaoSocPJ'
  element :cep_juridica_input, '#formGeral\:cepPJ'
  element :tipo_endereco_juridica_select, '#formGeral\:tipoEndPJ'
  element :logradouro_juridica_input, '#formGeral\:logradouroPJ'
  element :numero_juridica_input, '#formGeral\:numeroEndPJ'
  element :bairro_juridica_input, '#formGeral\:bairroEndPJ'
  element :uf_juridica_select, '#formGeral\:ufPJ'
  element :municipio_juridica_select, '#formGeral\:municipioPJ'
  element :ddd_telefone_juridica_input, '#formGeral\:dddComPJ'
  element :telefone_juridica_input, '#formGeral\:telComPJ'

  #Dados da Arma PJ
  element :serie_arma_pj_input, '//*[@id="formGeral:DadosArma"]//*[text()[contains(., "Número de Série")]]/../../input'
  element :especie_arma_pj_select, 'select[onchange*="event_especie"]'
  element :marca_arma_pj_select, 'select[onchange*="event_marca"]'
  element :calibre_arma_pj_select, 'select[onchange*="event_calibre"]'
  element :modelo_arma_pj_input, 'div[id*="ModeloArma"] input'
  element :nota_fiscal_pj_input, '#formGeral\:cbProdutoArma input[maxlength="10"]'
  element :data_nota_fiscal_pj_input, '#formGeral\:cbProdutoArma input[id*="InputDate"]'
  element :btn_data_nota, '#formGeral\:cbProdutoArma img[id*="PopupButton"]'
  element :data_nota_today, 'div[onclick*="today"]'
  element :cnpj_revendedor_pj_input, "input.mask-cnpj"

  #Declaração Efetiva necessidade PJ
  element :efetiva_necessidade_pj_check, 'input[id*="idCheckPerguntaObjetivaRegistro"]'

  # Necessário utilizar um número de série que esteja em estoque
  # O número pode ser utilizado apenas uma vez.
  # Este método busca um nr_serie diferente e salvar no arquivo txt
  def obter_nr_serie_estoque(tipo_pessoa)
    acessar_home
    menu_consultar_PJ
    cnpj_serie.click.set("92781335000102")
    btn_pesquisar.click
    aguardar_carregamento
    btn_detalhar_PJ.click
    aba_estoque.click
    wait_until_tabela_estoque_visible(wait: 20)
    especie_estoque.select("Pistola")
    marca_estoque.select("TAURUS (FORJAS TAURUS S.A.)")
    calibre_arma.select(".380")
    btn_pesquisar.click
    aguardar_carregamento
    gravar_dados("features/arquivos/nr_serie_PF.txt", nr_serie[0].text) if tipo_pessoa.eql?("PF")
    gravar_dados("features/arquivos/nr_cad_PF.txt", nr_cad[4].text) if tipo_pessoa.eql?("PF")
    gravar_dados("features/arquivos/nr_serie_PJ.txt", nr_serie[0].text) if tipo_pessoa.eql?("PJ")
    gravar_dados("features/arquivos/nr_cad_PJ.txt", nr_cad[4].text) if tipo_pessoa.eql?("PJ")
  end

  #### Selecionar opções ####
  def escolha_tipo_pessoa(tipo_pessoa)
    choose(tipo_pessoa)
  end

  def seleciona_categoria(categoria)
    categoria_select.select(categoria)
  end

  def seleciona_categoria_pj(categoria_pj)
    categoria_pj_select.select(categoria_pj)
  end

  def escolha_tipo_especie_autorizacao(tipo_autorizacao)
    choose(tipo_autorizacao)
  end

  def informar_codigo_autorizacao(nome_arquivo)
    @codigo = recuperar_dados("features/arquivos/requerimentos/#{nome_arquivo}")
    codigo_autorizacao_input.click.set(@codigo[0].to_i)
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

  def seleciona_tipo_endereco_pj(tipo_endereco_pj)
    tipo_endereco_juridica_select.select(tipo_endereco_pj)
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

  def informar_nr_serie(nome_arquivo)
    nome_arquivo.sub!(".txt", "")
    @numeros_serie = recuperar_dados("features/arquivos/#{nome_arquivo}.txt")
    serie_arma_input.click.set(@numeros_serie[0].chomp)
    numeros_serie_utilizados(nome_arquivo, @numeros_serie[0])
  end

  def numeros_serie_utilizados(nome_arquivo, numero)
    atualizar_conteudo("features/arquivos/#{nome_arquivo}_utilizados.txt", numero)
  end

  def seleciona_especie_arma(especie_arma)
    especie_arma_select.select(especie_arma)
  end

  def seleciona_especie_arma_pj(especie_arma_pj)
    especie_arma_pj_select.select(especie_arma_pj)
  end

  def seleciona_marca_arma(marca_arma)
    marca_arma_select.select(marca_arma)
  end

  def seleciona_marca_arma_pj(marca_arma_pj)
    marca_arma_pj_select.select(marca_arma_pj)
  end

  def seleciona_calibre_arma(calibre_arma)
    calibre_arma_select.select(calibre_arma)
  end

  def seleciona_calibre_arma_pj(calibre_arma_pj)
    calibre_arma_pj_select.select(calibre_arma_pj)
  end

  def seleciona_uf_atendimento(uf_atendimento)
    uf_atendimento_select.select(uf_atendimento)
  end

  def seleciona_municipio_atendimento(municipio_atendimento)
    municipio_atendimento_select.select(municipio_atendimento)
  end

  def seleciona_unidade_atendimento(unidade_atendimento)
    unidade_atendimento_select.select(unidade_atendimento)
  end
end
