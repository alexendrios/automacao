class RequerimentoGuiaTransitoPage < PageHelper
  set_url "http://#{IP_AMBIENTE}/sinarm-internet/faces/publico/incluirReqGuiaTransitoArmaFogo/consultarRequerimentoGuiaTransito.seam"

  # desenv
  #set_url "http://10.2.96.51:8480/sinarm-internet/faces/publico/incluirReqGuiaTransitoArmaFogo/consultarRequerimentoGuiaTransito.seam"

  #prehom
  #set_url "http://10.2.96.36:8480/sinarm-internet/faces/publico/incluirReqGuiaTransitoArmaFogo/consultarRequerimentoGuiaTransito.seam"

  element :cpf_input, '#requerimentoGuiaTransito\:txt-cpf'
  element :nr_CAD_input, '#requerimentoGuiaTransito\:txt-cadSinarm'
  element :btn_add_lista, '#requerimentoGuiaTransito\:adicionarLista'
  element :btn_pesquisar, '#requerimentoGuiaTransito\:pesquisar'
  element :btn_proxima, 'input[value*="Próxima"]'
  element :cnpj_input, '#requerimentoGuiaTransito\:txt-cnpj'
  element :nome_reponsavel_transito, '#formGeral\:formTabResponsavelTransito\:nomePF'
  element :cpf_responsavel, '#formGeral\:formTabResponsavelTransito\:numeroCPF'

  #Endereço origem
  element :motivo_transito, '#formGeral\:formTabTransito\:motivosTransito'
  element :cep_origem, 'input[id$="formTabTransito:cepProf1"]'
  element :logradouro_origem, 'input[id$="formTabTransito:logradouroProf1"]'
  element :complemento_origem, 'input[id$="formTabTransito:complEndProf1"]'
  element :tipo_endereco_origem, 'select[id$="formTabTransito:tipoEndProf1"]'
  element :nr_endereco_origem, 'input[id$="formTabTransito:numeroEndProf1"]'
  element :bairro_origem, 'input[id$="formTabTransito:bairroEndProf1"]'
  element :uf_origem, 'select[id$="formTabTransito:ufEndProf1"]'
  element :municipio_origem, 'div[id$="formTabTransito:municipioProf1"] select'

  #Endereço destino
  element :cep_destino, 'input[id$="formTabTransito:cepProf"]'
  element :logradouro_destino, 'input[id$="formTabTransito:logradouroProf"]'
  element :complemento_destino, 'input[id$="formTabTransito:complEndProf"]'
  element :tipo_endereco_destino, 'select[id$="formTabTransito:tipoEndProf"]'
  element :nr_endereco_destino, 'input[id$="formTabTransito:numeroEndProf"]'
  element :bairro_destino, 'input[id$="formTabTransito:bairroEndProf"]'
  element :uf_destino, 'select[id$="formTabTransito:ufEndProf"]'
  element :municipio_destino, 'div[id$="formTabTransito:municipioProf"] select'
  element :btn_data_inicial_prevista, '#formGeral\:formTabTransito\:dataInicialPopupButton'
  element :data_inicial_today, '#formGeral\:formTabTransito\:dataInicialFooter div[onclick*="today"]'
  element :periodo_transito_estimado, '#formGeral\:formTabTransito\:periodoTransito'
  element :declaracao_veracidade_check, '#formGeral\:termoResponsabilidade\:declaracaoVeracidade'
  element :uf_unidade_atendimento, '#formGeral\:termoResponsabilidade\:ufUnidadeAtendimento'
  element :municipio_atendimento_select, '#formGeral\:termoResponsabilidade\:municipiosUnidade'
  element :unidade_atendimento_select, '#formGeral\:termoResponsabilidade\:postoAtendimento'
  element :btn_emitir_requerimento, 'input[value="Emitir Requerimento"]'

  def escolha_tipo_pessoa(tipo_pessoa)
    choose(tipo_pessoa)
  end

  def seleciona_motivo_transito(motivo)
    motivo_transito.select(motivo)
  end

  def check_via_transito(via)
    check(via)
  end

  def seleciona_tipo_endereco_origem(tipo)
    tipo_endereco_origem.select(tipo)
  end

  def seleciona_uf_origem(uf)
    uf_origem.select(uf)
  end

  def seleciona_municipio_origem(municipio)
    municipio_origem.select(municipio)
  end

  def seleciona_tipo_endereco_destino(tipo)
    tipo_endereco_destino.select(tipo)
  end

  def seleciona_uf_destino(uf)
    uf_destino.select(uf)
  end

  def seleciona_municipio_destino(municipio)
    municipio_destino.select(municipio)
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
end
