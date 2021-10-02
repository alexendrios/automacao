class RequerimentoRenovacaoRegistroPage < PageHelper
  set_url "http://#{IP_AMBIENTE}/sinarm-internet/faces/publico/incluirReqRenovacaoArmaFogo/consultarRequerimentoRenovacao.seam"

  # desenv
  #set_url "http://10.2.96.51:8480/sinarm-internet/faces/publico/incluirReqRenovacaoArmaFogo/consultarRequerimentoRenovacao.seam

  #prehom
  #set_url "http://10.2.96.36:8480/sinarm-internet/faces/publico/incluirReqRenovacaoArmaFogo/consultarRequerimentoRenovacao.seam

  element :categorias_pf_select, '#requerimentoRenovacao\:cb-categoria-pf'
  element :cpf_input, '#requerimentoRenovacao\:txt-cpf'
  element :categorias_pj_select, '#requerimentoRenovacao\:cb-categoria-pj'
  element :cnpj_input, '#requerimentoRenovacao\:txt-cnpj'
  element :nr_CAD_input, '#requerimentoRenovacao\:txt-cadSinarm'
  element :btn_add_lista, '#requerimentoRenovacao\:adicionarLista'
  element :btn_pesquisar, '#requerimentoRenovacao\:pesquisar'
  element :btn_proxima, 'input[value*="Próxima"]'
  element :declaracao_renovacao_txt, 'textarea[id*="txtAreaRenovacao"]'
  element :declaracao_necessidade_check, 'input[id*="idCheckPerguntaObjetivaRenovacao"]'
  element :declaracao_veracidade_check, '#formGeral\:termoResponsabilidade\:declaracaoVeracidade'
  element :uf_unidade_atendimento, '#formGeral\:termoResponsabilidade\:ufUnidadeAtendimento'
  element :municipio_atendimento_select, '#formGeral\:termoResponsabilidade\:municipiosUnidade'
  element :unidade_atendimento_select, '#formGeral\:termoResponsabilidade\:postoAtendimento'
  element :btn_emitir_requerimento, 'input[value*="Emitir Requerimento"]'

  def escolha_tipo_pessoa(tipo_pessoa)
    choose(tipo_pessoa)
  end

  def select_categoria_PF(categoria)
    categorias_pf_select.select(categoria)
  end

  def select_categoria_PJ(categoria)
    categorias_pj_select.select(categoria)
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
