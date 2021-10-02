class RequerimentoTransferenciaRegistroPage < PageHelper
  set_url "http://#{IP_AMBIENTE}/sinarm-internet/faces/publico/incluirReqTransfRegistroArmaFogo/consultarReqTransfRegistroArmaFogo.seam"

  # desenv
  # set_url "http://10.2.96.51:8480/sinarm-internet/faces/publico/incluirReqTransfRegistroArmaFogo/consultarReqTransfRegistroArmaFogo.seam""

  # prehom
  # set_url "http://10.2.96.36:8480/sinarm-internet/faces/publico/incluirReqTransfRegistroArmaFogo/consultarReqTransfRegistroArmaFogo.seam""

  element :proprietario_pessoa_fisica, 'input[id*="tipoProprietario"][value="FISICA"]'
  element :proprietario_pessoa_juridica, 'input[id*="tipoProprietario"][value="JURIDICA"]'
  element :adquirente_pessoa_fisica, 'input[id*="tipoAdquirente"][value="FISICA"]'
  element :adquirente_pessoa_juridica, 'input[id*="tipoAdquirente"][value="JURIDICA"]'
  element :cpf_input, '#requerimentoTransferencia\:inputcpf'
  element :cnpj_input, '#requerimentoTransferencia\:txt-cnpj'
  element :nr_CAD_input, '#requerimentoTransferencia\:txt-cadSinarm'

  # Dados adquirente Pessoa Física
  element :categoria_adquirente_PF, '#requerimentoDetalhamento\:categoriasPF'
  element :nome_input, 'input[id*="nomePF"]'
  element :cpf_adquirente_input, 'input[id*="numeroCPF"]'
  element :pai_input, 'input[id*="nomePaiPf"]'
  element :mae, 'input[id*="nomeMae"]'
  element :email_input, '#requerimentoDetalhamento\:j_id115\:email'
  element :nascimento, 'input[id*="dataNascInputDate"]'
  element :sexo_select, 'select[id*="sex"]'
  element :pais_nascimento, 'select[id*="paisNasc"]'
  element :uf_nascimento, 'select[id*="ufNasc"]'
  element :munic_nascimento, 'select[id*="municNasc"]'
  element :rg_input, 'input[id*="numRG"]'
  element :data_rg, 'input[id*="dtExpRGInputDate"]'
  element :orgao_rg, 'input[id*="orgaoExpRG"]'
  element :uf_rg, 'select[id*="ufExpeRG"]'
  element :estado_civil_select, 'select[id*="estadoCivil"]'
  element :titulo_eleitor, 'input[id*="tituloEle"]'
  element :profissao_select, 'select[id*="prof"]'
  element :cep_residencia, 'input[id*="cepRes"]'
  element :tipo_endereco, 'select[id*="tipoEndResidencial"]'
  element :logradouro, 'input[id*="logradouroRes"]'
  element :nr_endereco, 'input[id*="numRes"]'
  element :bairro, 'input[id*="bairroRes"]'
  element :uf_endereco, 'select[id*="ufRes"]'
  element :municipio_endereco, 'select[id*="municipioRes"]'
  element :ddd_celular, 'input[id*="dddTelCelRes"]'
  element :nr_celular, 'input[id*="telCelRes"]'

  # Dados adquirente Pessoa Jurídica
  element :categoras_adquirente_Pj, '#requerimentoDetalhamento\:categoriasPJ'
  element :cnpj_adquirente_input, 'input[id*="cnpj"]'
  element :razao_social, 'input[id*="razaoSocPJ"]'
  element :cep_PJ, 'input[id*="cepPJ"]'
  element :tipo_endereco_PJ, 'select[id*="tipoEndPJ"]'
  element :logradouro_PJ, 'input[id*="logradouroPJ"]'
  element :nr_endereco_PJ, 'input[id*="numeroEndPJ"]'
  element :bairro_PJ, 'input[id*="bairroEndPJ"]'
  element :uf_endereco_PJ, 'select[id*="ufPJ"]'
  element :municipio_endereco_PJ, 'div[id*="municipioPJ"] select'
  element :ddd_PJ, 'input[id*="dddComPJ"]'
  element :telefone_PJ, 'input[id*="telComPJ"]'
  element :declaracao_necessidade_check, 'input[id*="idCheckPerguntaObjetivaRenovacao"]'
  element :necessidade_areatxt, 'textarea[id$="0:txtAreaTransf"]'
  element :residentes_areatxt, 'textarea[id$="1:txtAreaTransf"]'
  element :declaracao_veracidade_check, 'input[id*="declaracaoVeracidade"]'
  element :uf_unidade_atendimento, 'select[id*="ufUnidadeAtendimento"]'
  element :municipio_atendimento_select, 'select[id*="municipiosUnidade"]'
  element :unidade_atendimento_select, 'select[id*="postoAtendimento"]'
  element :btn_add_lista, '#requerimentoTransferencia\:adicionarLista'
  element :btn_pesquisar, 'input[id*="pesquisar"]'
  element :btn_proxima, 'input[value*="Próxima"]'
  element :btn_emitir_requerimento, 'input[value*="Emitir Requerimento"]'

  def escolha_tipo_proprietario(tipo_proprietario)
    if tipo_proprietario.eql?("Pessoa Física")
      proprietario_pessoa_fisica.click
    else
      proprietario_pessoa_juridica.click
    end
  end

  def escolha_tipo_adquirente(tipo)
    if tipo.eql?("Pessoa Física")
      adquirente_pessoa_fisica.click
    else
      adquirente_pessoa_juridica.click
    end
  end

  def select_categoria_PF(categoria)
    categoria_adquirente_PF.select(categoria)
  end

  def seleciona_sexo(sexo)
    sexo_select.select(sexo)
  end

  def informar_localidade_nascimento(pais, uf, municipio)
    pais_nascimento.select(pais)
    # uf_nascimento.select(uf)
    # munic_nascimento.select(municipio)
  end

  def seleciona_uf_rg(uf)
    uf_rg.select(uf)
  end

  def seleciona_estado_civil(estado_civil)
    estado_civil_select.select(estado_civil)
  end

  def seleciona_profissao(profissao)
    profissao_select.select(profissao)
  end

  def seleciona_tipo_endereco_PF(tipo)
    tipo_endereco.select(tipo)
  end

  def seleciona_uf_endereco(uf)
    uf_endereco.select(uf)
  end

  def seleciona_municipio_endereco(municipio)
    municipio_endereco.select(municipio)
  end

  # Seleciona opções para PJ
  def select_categoria_PJ(categoria)
    categoras_adquirente_Pj.select(categoria)
  end

  def seleciona_tipo_endereco_PJ(tipo)
    tipo_endereco_PJ.select(tipo)
  end

  def seleciona_uf_endereco_PJ(uf)
    uf_endereco_PJ.select(uf)
  end

  def seleciona_municipio_endereco_PJ(municipio)
    municipio_endereco_PJ.select(municipio)
  end

  def declarar_efetiva_necessidade(necessidade, residentes)
    necessidade_areatxt.click.set(necessidade)
    residentes_areatxt.click.set(residentes)
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

  # Transferência para o adquirente
  def transferir_para_adquirente
    escolha_tipo_proprietario("Pessoa Física")
    cpf_input.click.set("89905839186")
    @nr_cad = informar_nr_cad("nr_cad_PF.txt")
    nr_CAD_input.click.set(@nr_cad)
    #nr_CAD_input.click.set(201200828688597)
    btn_add_lista.click
    escolha_tipo_adquirente("Pessoa Física")
    informar_captcha
    btn_pesquisar.click
    btn_proxima.click
    aguardar_carregamento

    #Dados adquirente
    select_categoria_PF("Cidadão")
    nome_input.click.set("Fabiana de Souza")
    cpf_adquirente_input.click.set("72375944941")
    pai_input.click.set("Joaquim de Souza")
    mae.click.set("Maria de Souza")
    nascimento.click.set("01/07/1985")
    seleciona_sexo("Feminino")
    informar_localidade_nascimento("Brasil", "DF", "Brasília")
    rg_input.click.set(1234567)
    data_rg.click.set("06/08/1998")
    orgao_rg.click.set("SSP")
    seleciona_uf_rg("DF")
    seleciona_estado_civil("Casado")
    titulo_eleitor.click.set("12354367898")
    seleciona_profissao("ADMINISTRADOR")
    email_input.click.set("FabianadeSouza@urhen.com")
    cep_residencia.click.set("72016012")
    seleciona_tipo_endereco_PF("Residencial")
    logradouro.click.set("Área Especial 04")
    nr_endereco.click.set(28)
    bairro.click.set("Taguatinga Sul")
    seleciona_uf_endereco("DF")
    seleciona_municipio_endereco("Brasília")
    ddd_celular.click.set("61")
    nr_celular.click.set("912345678")
    btn_proxima.click
    aguardar_carregamento
  end

  # Transferir de volta para proprietario
  def transferir_para_proprietario
    escolha_tipo_proprietario("Pessoa Física")
    cpf_input.click.set("72375944941")
    @nr_cad = informar_nr_cad("nr_cad_PF.txt")
    nr_CAD_input.click.set(@nr_cad)
    #nr_CAD_input.click.set(201200828688597)
    btn_add_lista.click
    escolha_tipo_adquirente("Pessoa Física")
    informar_captcha
    btn_pesquisar.click
    btn_proxima.click
    aguardar_carregamento
    select_categoria_PF("Cidadão")
    nome_input.click.set("Paulo Cauã Nunes")
    cpf_adquirente_input.click.set("89905839186")
    pai_input.click.set("Giovana Araújo Gomes")
    mae.click.set("Giovane Araújo Gomes Barbosa")
    nascimento.click.set("02021989")
    seleciona_sexo("Feminino")
    informar_localidade_nascimento("Brasil", "DF", "Brasília")
    rg_input.click.set(159086255)
    data_rg.click.set("10102010")
    orgao_rg.click.set("SSP")
    seleciona_uf_rg("DF")
    seleciona_estado_civil("Solteiro")
    titulo_eleitor.click.set("376814262089")
    seleciona_profissao("ADMINISTRADOR")
    cep_residencia.click.set("72302409")
    seleciona_tipo_endereco_PF("Residencial")
    logradouro.click.set("QR 112")
    nr_endereco.click.set(822)
    bairro.click.set("Taguatinga")
    seleciona_uf_endereco("DF")
    seleciona_municipio_endereco("Brasília")
    ddd_celular.click.set("61")
    nr_celular.click.set("995746286")
    btn_proxima.click
    aguardar_carregamento
  end

  def transferir_para_adquirente_PJ
    escolha_tipo_proprietario("Pessoa Jurídica")
    cnpj_input.click.set("00730680000107")
    @nr_cad_PJ = informar_nr_cad("nr_cad_PJ.txt")
    nr_CAD_input.click.set(@nr_cad_PJ)
    btn_add_lista.click
    sleep(2)
    escolha_tipo_adquirente("Pessoa Jurídica")
    informar_captcha
    btn_pesquisar.click
    btn_proxima.click
    aguardar_carregamento
    select_categoria_PJ("Empresa Comercial")
    cnpj_adquirente_input.click.set("02306220000173")
    razao_social.click.set("Mirante Tecnologia")
    cep_PJ.click.set("70750543")
    seleciona_tipo_endereco_PJ("Comercial")
    logradouro_PJ.click.set("Edifício Bittar III")
    nr_endereco_PJ.click.set("511")
    bairro_PJ.click.set("Asa Norte")
    seleciona_uf_endereco_PJ("DF")
    seleciona_municipio_endereco_PJ("Brasília")
    ddd_PJ.click.set("61")
    telefone_PJ.click.set("35330500")
    btn_proxima.click
    aguardar_carregamento
  end

  def transferir_para_proprietario_PJ
    escolha_tipo_proprietario("Pessoa Jurídica")
    cnpj_input.click.set("00730680000107")
    @nr_cad_PJ = informar_nr_cad("nr_cad_PJ.txt")
    nr_CAD_input.click.set(@nr_cad_PJ)
    btn_add_lista.click
    sleep(2)
    escolha_tipo_adquirente("Pessoa Jurídica")
    informar_captcha
    btn_pesquisar.click
    btn_proxima.click
    aguardar_carregamento
    select_categoria_PJ("Empresa Comercial")
    cnpj_adquirente_input.click.set("92781335000102")
    razao_social.click.set("FORJAS TAURUS S.A.")
    cep_PJ.click.set("93032000")
    seleciona_tipo_endereco_PJ("Comercial")
    logradouro_PJ.click.set("Avenida São Borja")
    nr_endereco_PJ.click.set("2181")
    bairro_PJ.click.set("Rio Branco")
    seleciona_uf_endereco_PJ("RS")
    seleciona_municipio_endereco_PJ("São Leopoldo")
    ddd_PJ.click.set("51")
    telefone_PJ.click.set("35880001")
    btn_proxima.click
    aguardar_carregamento
  end
end
