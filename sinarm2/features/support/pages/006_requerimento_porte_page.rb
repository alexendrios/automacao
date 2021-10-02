class RequerimentoPortePage < PageHelper
  set_url "http://#{IP_AMBIENTE}/sinarm-internet/faces/publico/incluirReqPorteArmaFogo/pesquisarReqPorteArmaFogo.seam"

  # desenv
  # set_url "http://10.2.96.51:8480/sinarm-internet/faces/publico/incluirReqPorteArmaFogo/pesquisarReqPorteArmaFogo.seam

  # prehom
  # set_url "http://10.2.96.36:8480/sinarm-internet/faces/publico/incluirReqPorteArmaFogo/pesquisarReqPorteArmaFogo.seam

  element :cpf_input, '#formConsultar\:cpf'
  element :nr_CAD_input, '#formConsultar\:txt-cadSinarm'
  element :btn_add_lista, '#formConsultar\:adicionarLista'
  element :btn_pesquisar, '#formConsultar\:btnPesquisar'
  element :btn_proxima, 'input[value*="Próxima"]'
  element :declaracao_necessidade_textarea, 'textarea[id*="txtAreaPorte"]'
  element :declaracao_veracidade_check, '#formGeral\:termoResponsabilidade\:declaracaoVeracidade'
  element :uf_unidade_atendimento, '#formGeral\:termoResponsabilidade\:ufUnidadeAtendimento'
  element :municipio_atendimento_select, '#formGeral\:termoResponsabilidade\:municipiosUnidade'
  element :unidade_atendimento_select, '#formGeral\:termoResponsabilidade\:postoAtendimento'
  element :btn_emitir_requerimento, 'input[value*="Emitir Requerimento"]'

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
