class RequerimentoSegundaViaPage < PageHelper
  set_url "http://#{IP_AMBIENTE}/sinarm-internet/faces/publico/incluirReqSegundaVia/consultarRequerimentoSegundaVia.seam"

  # desenv
  # set_url "http://10.2.96.51:8480/sinarm-internet/faces/publico/incluirReqSegundaVia/consultarRequerimentoSegundaVia.seam"

  # prehom
  # set_url "http://10.2.96.36:8480/sinarm-internet/faces/publico/incluirReqSegundaVia/consultarRequerimentoSegundaVia.seam"

  element :categoria_select, :xpath, '//*[text()[contains(., "Categoria")]]/../select'
  element :tipo_documento, :xpath, '//*[text()[contains(., "Tipo de Documento")]]/../select'
  element :cpf_input, "input.mask-cpf"
  element :cnpj_input, "input.mask-cnpj"
  element :data_nascimento, 'input[id*="InputDate"]'
  element :calibre_select, :xpath, '//*[text()[contains(., "Calibre")]]/../select'
  element :especie_select, :xpath, '//*[text()[contains(., "Espécie")]]/../select'
  element :marca_select, :xpath, '//*[text()[contains(.,"Marca")]]/../select'
  element :nr_serie_input, :xpath, '//*[text()[contains(.,"Nº de Série")]]/../input'
  element :btn_pesquisar, 'input[value*="Pesquisar"]'
  element :btn_proxima, 'input[value*="Próxima"]'
  element :tipo_ocorrencia_select, :xpath, '//*[text()[contains(.,"Tipo de Ocorrência")]]/../select'
  element :documento_danificado_option, :xpath, '//*[text()[contains(.,"Tipo de Ocorrência")]]/../select/*[@value="DOCUMENTO_DANIFICADO"]'
  element :nr_ocorrencia_input, "input.mask-numero"
  element :btn_data_ocorrencia, '#formGeral\:dataOcorrenciaPopupButton'
  element :data_ocorrencia_today, '#formGeral\:dataOcorrenciaFooter div[onclick*="today"]'
  element :uf_ocorrencia, 'select[onchange*="list_uf"]'
  element :municipio_ocorrencia, '#formGeral\:munic'
  element :instituicao_ocorrencia, :xpath, '//*[text()[contains(.,"Instituição")]]/../select'
  element :unidade_ocorrencia_input, :xpath, '//*[text()[contains(.,"Unidade")]]/../input'
  element :declaracao_veracidade_check, '#formGeral\:termoResponsabilidade\:declaracaoVeracidade'
  element :uf_unidade_atendimento, '#formGeral\:termoResponsabilidade\:ufUnidadeAtendimento'
  element :municipio_atendimento_select, '#formGeral\:termoResponsabilidade\:municipiosUnidade'
  element :unidade_atendimento_select, '#formGeral\:termoResponsabilidade\:postoAtendimento'
  element :btn_emitir_requerimento, 'input[value*="Emitir Requerimento"]'

  def seleciona_tipo_formulario(tipo)
    choose(tipo)
  end

  def seleciona_categoria(categoria)
    categoria_select.select(categoria)
  end

  def seleciona_tipo_documento(documento)
    tipo_documento.select(documento)
  end

  def seleciona_calibre(calibre)
    calibre_select.select(calibre)
  end

  def seleciona_marca(marca)
    marca_select.select(marca)
  end

  def seleciona_especie(especie)
    especie_select.select(especie)
  end

  # Obtem o último nr_serie do arquivo txt passado como parâmetro
  # Quando Pessoa Física "nr_serie_PF_utilizados.txt"
  # Quando Pessoa Jurídica "nr_serie_PJ_utilizados.txt"
  def informar_nr_serie(nome_arquivo)
    @numeros_serie_utilizado = recuperar_dados("features/arquivos/#{nome_arquivo}")
    nr_serie_input.click.set(@numeros_serie_utilizado[-1].chomp)
  end

  def seleciona_tipo_de_ocorrencia(ocorrencia)
    tipo_ocorrencia_select.select(ocorrencia)
  end

  def seleciona_uf_ocorrencia(uf)
    uf_ocorrencia.select(uf)
  end

  def seleciona_municipio_ocorrencia(municipio)
    municipio_ocorrencia.select(municipio)
  end

  def seleciona_instituicao_ocorrencia(instituicao)
    instituicao_ocorrencia.select(instituicao)
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
