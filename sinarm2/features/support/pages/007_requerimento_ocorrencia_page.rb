class RequerimentoOcorrencia < PageHelper
  set_url "http://#{IP_AMBIENTE}/sinarm-internet/faces/publico/incluirRequerimentoOcorrencia/dadosConsultaRegistroOcorrencia.seam"

  # desenv
  #set_url "http://10.2.96.51:8480/sinarm-internet/faces/publico/incluirRequerimentoOcorrencia/dadosConsultaRegistroOcorrencia.seam"

  #prehom
  #set_url "http://10.2.96.36:8480/sinarm-internet/faces/publico/incluirRequerimentoOcorrencia/dadosConsultaRegistroOcorrencia.seam"

  element :cpf_input, '#formConsultaRequerimentoOcorrencia\:txt-cpf'
  element :cnpj_input, '#formConsultaRequerimentoOcorrencia\:txt-cnpj'
  element :nr_CAD_input, '#formConsultaRequerimentoOcorrencia\:txt-cadSinarm'
  element :btn_add_lista, 'input[value*="Adicionar à Lista"]'
  element :btn_pesquisar, 'input[value*="Pesquisar"]'
  element :btn_proxima, 'input[value*="Próxima"]'

  # dados responsável pela comunicação
  element :nome_responsavel, :xpath, '//*[text()[contains(., "Nome:")]]/../../input'
  element :data_nasc_responsavel_input, '#formGeral\:dataNascInputDate'
  element :btn_data_nasc, '#formGeral\:dataNascPopupButton'
  element :data_nasc_today, '#formGeral\:dataNascFooter div[onclick*="today"]'
  element :cpf_responsavel, "input.mask-cpf"
  element :pai_responsavel, :xpath, '//*[text()[contains(., "Nome do Pai")]]/../../input'
  element :mae_responsavel, :xpath, '//*[text()[contains(., "Nome da Mãe")]]/../../input'
  element :tipo_ocorrencia_select, :xpath, '//*[text()[contains(.,"Tipo de Ocorrência:")]]/../../select'
  element :nr_ocorrencia_input, "input.mask-numero"
  element :data_ocorrencia_input, 'formGeral\:dataOcorrenciaInputDate'
  element :btn_data_ocorrencia, '#formGeral\:dataOcorrenciaPopupButton'
  element :data_ocorrencia_today, '#formGeral\:dataOcorrenciaFooter div[onclick*="today"]'
  element :uf_ocorrencia, :xpath, '//*[text()[contains(., "UF")]]/../../select'
  element :municipio_ocorrencia, '#formGeral\:municNasc'
  element :instituicao_ocorrencia, :xpath, '//*[text()[contains(., "Instituição")]]/../../select'
  element :unidade_ocorrencia_input, :xpath, '//*[text()[contains(., "Unidade")]]/../../input'
  element :btn_procurar_anexo, '#formGeral\:upload-arquivos\:file'
  element :btn_excluir, '#formGeral\:excluirArquivo a'
  element :declaracao_veracidade_check, '#formGeral\:termoResponsabilidade\:declaracaoVeracidade'
  element :uf_unidade_atendimento, '#formGeral\:termoResponsabilidade\:ufUnidadeAtendimento'
  element :municipio_atendimento_select, '#formGeral\:termoResponsabilidade\:municipiosUnidade'
  element :unidade_atendimento_select, '#formGeral\:termoResponsabilidade\:postoAtendimento'
  element :btn_emitir_requerimento, 'input[value*="Emitir Requerimento"]'

  def seleciona_tipo_formulario(tipo)
    choose(tipo)
  end

  def seleciona_tipo_ocorrencia(ocorrencia)
    tipo_ocorrencia_select.select(ocorrencia)
  end

  def seleciona_uf_ocorrencia(uf)
    uf_ocorrencia.select(uf)
  end

  def seleciona_municipio_ocorrencia(uf)
    municipio_ocorrencia.select(uf)
  end

  def seleciona_instituicao(uf)
    instituicao_ocorrencia.select(uf)
  end

  def anexar_boletim
    anexar(btn_procurar_anexo(visible: false)["id"], "features/arquivos/PDF_TESTE.pdf")
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
