class ProcessosPage < PageHelper

  element :tela_tramitacao, '#formAcompanhar\:tela-resultado'
  element :codigo_requerimento, 'input.maskCodRequerimento'
  element :unidades_select, 'select[id*="listUnidades"]'
  element :nome_responsavel, :xpath, '//td/input[@maxlength="40"]'
  element :btn_pesquisar, 'input[value^="Pesquisar"]'
  element :tabela_requerimentos, '#formAcompanhar\:tabelaRequerimentos\:tb'
  element :check_requerimento, 'input.checks'
  element :btn_receber_processo, '#formAcompanhar\:receberBtn'
  element :btn_confirmar_recebimento, '#formAcompanhar\:confimTrans'
  element :btn_cancelar_recebimento,  '#formAcompanhar\:cancelar'
  element :btn_manifestar, 'a[title="Manifestar"]'
  element :form_guia_transito, 'form[id="formAcompanhar"][action*="guiaTransito"]'
  element :form_ocorrencia, 'form[id=formArma][action*="etapaArmaFogoOcorrencia"]'
  element :campos_identificacao_PessoaFisica, '#formAcompanhar\:camposPessoaFisica'
  element :btn_anexar_todos, 'input[id*="uploadArquivosEspecial:file"]'
  element :btn_anexar_todos_pj, '#formAcompanhar\:j_id175\:0\:uploadArquivos\:file'
  element :btn_excluir_anexo_especial, :xpath, '//*[text()[contains(.,"Todos os documentos exigidos")]]/../..//input[@value="Excluir"]'
  element :btn_excluir_anexo_especial_pj, 'input[value="Excluir"]'
  element :check_SINIC, :xpath,  '//*[text()[contains(.,"SINIC")]]/../../input[not(contains(@name,"CheckPerguntaObjetiva"))]'
  element :obs_SINIC, 'textarea[id*="obsVerificacaoSinic"]'
  element :check_INFOSEG, :xpath, '//*[text()[contains(.,"INFOSEG")]]/../input'
  element :obs_INFOSEG, 'textarea[id*="obsVerificacaoInfoSeg"]'
  element :btn_proxima, 'input[value^="Próxima"]'
  element :btn_salvar, 'input[value="Salvar"]'
  element :btn_emitir_manifestacao, 'input[value="Emitir Manifestação"]'
  element :btn_nova_manifestacao, 'input[value="Nova Manifestação"]'
  element :tipo_manifestacao_select, '#formAcompanhar\:tipoManifestacao'
  element :assunto_manifestacao_select, 'div[id*="formAcompanhar:assuntoManifestacao"] select'
  element :desc_manifestacao_select, 'div[id*="idModeloManifestacao"] select'
  element :btn_selecionar_modelo, 'input[value="Selecionar Modelo"]'
  element :msg_sucesso, 'dl dt.mensagem_sucesso'
  element :msg_cod_gerado, :xpath, '//*[@id="mensagens"]/dt[1]'
  element :div_guia_transito, :xpath, '//legend[text()[contains(., "Dados da Guia de Trânsito")]]/../..'
  element :motivo_transito_select, 'select[id*="motivosTransito"]'
  element :btn_data_inicial, 'img[id$="PopupButton"]'
  element :data_inicial_today, 'td[id$="Footer"] div[onclick*="today"]'
  element :data_inicial_prevista_input,  'input.rich-calendar-input'
  element :periodo_transito_estimado,  :xpath, '//*[text()[contains(.,"Período de Trânsito")]]/../../input'
  element :categoria_porte, '#formAcompanhar\:tpCategoriaPorte'
  element :periodo_porte_input, '#formAcompanhar\:quantidadePeriodos'
  element :tipo_periodo_porte, '#formAcompanhar\:listTipoPeriodo'
  element :abrangencia_territorial, :xpath, '//*[text()[contains(.,"Abrangência Territorial")]]/..//select'
  element :uf_abrangencia, '#formAcompanhar\:ufAbrangenciaTerritorial'
  element :btn_adicionar_abrangencia, 'input[value="Adicionar"]'
  element :btn_distribuir_processo, "input[id*='distribuirbtn']"
  element :select_distribuir_para_pessoa, '#formAcompanhar\:selectServido'
  element :btn_confirmar_distribuir, '#formAcompanhar\:confimTrans1'


  def receber_processo(nr_processo)
    acessar_home

    pesquisar_processo(nr_processo)

    if(requerimento_aberto?)
      check_requerimento.click
      aguardar_carregamento
      btn_receber_processo.click
      aguardar_carregamento
      btn_confirmar_recebimento.click
      aguardar_carregamento
    end
  end

  def recebe_processo
    if(requerimento_aberto?)
      check_requerimento.click
      aguardar_carregamento
      btn_receber_processo.click
      aguardar_carregamento
      btn_confirmar_recebimento.click
      aguardar_carregamento
    end
  end

  def distribuir_processo(nr_processo, usuario)

    pesquisar_processo(nr_processo)

    if(requerimento_analise?)
      check_requerimento.click
      aguardar_carregamento
      btn_distribuir_processo.click
      aguardar_carregamento
      select_distribuir_para_pessoa.select(usuario)
      aguardar_carregamento
      btn_confirmar_distribuir.click
      aguardar_carregamento
    end
  end

  def mudar_de_aba
    execute_script "window.open()"
    mudar_foco
  end

  def requerimento_analise?
    within(tabela_requerimentos) do
      page.has_text?("Em Análise", wait: 2)
    end
  end

  def requerimento_aberto?
    within(tabela_requerimentos) do
      page.has_text?("Em Aberto", wait: 2)
    end
  end

  def pesquisar_processo(nome_arquivo)
    wait_until_tela_tramitacao_visible
    @nr_requerimento = recuperar_dados("features/arquivos/requerimentos/#{nome_arquivo}")
    codigo_requerimento.click.set(@nr_requerimento[0].to_i)
    unidades_select.select('Todos')
    nome_responsavel.click.set("")
    btn_pesquisar.click
    aguardar_carregamento
  end

  def solicitar_manifestar
    btn_manifestar.click
  end

  def situacao_do_processo
    btn_proxima.click
  end

  def etapas_do_processo
    etapa_identificacao
    etapa_arma_de_fogo
    etapa_documentacao
    if(has_no_form_guia_transito?(wait: 1))
      etapa_verificacao
    else
      dados_do_transito
    end
  end

  

  def etapas_do_processo_processo_segunda_via_pf
    etapa_identificacao
    etapa_arma_de_fogo
    etapa_documentacao
    if(has_no_form_guia_transito?(wait: 1))
      etapa_verificacao_processo_segunda_via_pf
    else
      dados_do_transito
    end
  end

  
  def etapas_do_processo_segunda_via_pj
    etapa_identificacao
    etapa_arma_de_fogo
    etapa_documentacao_segunda_via_pj
    if(has_no_form_guia_transito?(wait: 1))
      etapa_verificacao_processo_segunda_via_pj
    else
      dados_do_transito
    end
  end

  # Metodo específico para processo de ocorrência
  def ocorrencia_etapas_do_processo
    etapa_identificacao
    etapa_arma_de_fogo
  end

  def etapa_identificacao
    #wait_until_campos_identificacao_PessoaFisica_visible
    btn_proxima.click
    aguardar_carregamento
  end

  def etapa_arma_de_fogo
    if(has_form_ocorrencia?(wait: 1))
      btn_salvar.click
      aguardar_carregamento
      btn_emitir_manifestacao.click
      aguardar_carregamento
    else
      btn_proxima.click
      aguardar_carregamento
    end
  end

  def etapa_documentacao
    if(has_btn_excluir_anexo_especial?(visible: false, wait: 1))
      btn_proxima.click
      aguardar_carregamento
    else
      anexar(btn_anexar_todos(visible: false)['id'], 'features/arquivos/PDF_TESTE.pdf')
      aguardar_carregamento
      wait_until_btn_excluir_anexo_especial_visible
      btn_proxima.click
      aguardar_carregamento
    end
  end


  
  def etapa_documentacao_segunda_via_pj
    if(has_btn_excluir_anexo_especial?(visible: false, wait: 1))
      btn_proxima.click
      aguardar_carregamento
    else
      anexar(btn_anexar_todos_pj(visible: false)['id'], 'features/arquivos/PDF_TESTE.pdf')
      aguardar_carregamento
      wait_until_btn_excluir_anexo_especial_pj_visible
      btn_proxima.click
      aguardar_carregamento
    end
  end


  def etapa_verificacao
    if(has_no_check_SINIC?(wait: 1))
      binding.pry
      btn_proxima.click 
      aguardar_carregamento
    else
      unless(check_SINIC.checked?)
        check_SINIC.check
        aguardar_carregamento
        obs_SINIC.click.set('Observações script de teste')
      end
      unless(check_INFOSEG.checked?)
        check_INFOSEG.check
        obs_INFOSEG.click.set('Observações script de teste')
      end
      btn_salvar.click
      btn_emitir_manifestacao.click
      aguardar_carregamento
    end
  end

  def etapa_verificacao_processo_segunda_via_pf
    if(has_no_check_SINIC?(wait: 1))
      btn_salvar.click
      btn_emitir_manifestacao.click
      aguardar_carregamento
    else
      unless(check_SINIC.checked?)
        check_SINIC.check
        aguardar_carregamento
        obs_SINIC.click.set('Observações script de teste')
      end
      unless(check_INFOSEG.checked?)
        check_INFOSEG.check
        obs_INFOSEG.click.set('Observações script de teste')
      end
      
      aguardar_carregamento
    end
  end

  
  def etapa_verificacao_processo_segunda_via_pj
    if(has_no_check_SINIC?(wait: 1))
      btn_salvar.click
      btn_emitir_manifestacao.click
      aguardar_carregamento
    else
      unless(check_SINIC.checked?)
        check_SINIC.check
        aguardar_carregamento
        obs_SINIC.click.set('Observações script de teste')
      end
      unless(check_INFOSEG.checked?)
        check_INFOSEG.check
        obs_INFOSEG.click.set('Observações script de teste')
      end
      
      aguardar_carregamento
    end
  end

  def dados_do_transito
    btn_salvar.click
    btn_emitir_manifestacao.click
    aguardar_carregamento
  end

  def nova_manifestacao
    aguardar_carregamento
    btn_nova_manifestacao.click
    aguardar_carregamento
  end

  def seleciona_tipo_manifestacao(tipo)
    tipo_manifestacao_select.select(tipo)
    aguardar_carregamento
  end

  def escloha_situacao_decisao(situacao)
    choose(situacao)
    aguardar_carregamento
  end

  def select_assunto_manifestacao(assunto)
    assunto_manifestacao_select.select(assunto)
    aguardar_carregamento
  end

  def select_desc_manifestacao(descricao)
    # binding.pry
    desc_manifestacao_select.select(descricao)
    aguardar_carregamento
  end

  def selecionar_modelo_manifestacao
    btn_selecionar_modelo.click
    aguardar_carregamento
  end

  def seleciona_motivo_transito(motivo)
    motivo_transito_select.select(motivo)
  end

  def check_via_transito(via)
    check(via)
  end

  def data_inicial_prevista(data = nil)
    if(data.nil?)
      btn_data_inicial.click
      data_inicial_today.click
    else
      data_inicial_prevista_input.click.set(data)
    end
  end

  def seleciona_categoria_porte(categoria)
    categoria_porte.select(categoria)
  end

  def informar_periodo_porte(periodo)
    periodo_porte_input.click.set(periodo)
  end

  def seleciona_tipo_periodo_porte(tipo)
    tipo_periodo_porte.select(tipo)
  end

  def seleciona_abrangencia_territorial(abrangencia)
    if(abrangencia.eql?('Nacional'))
      abrangencia_territorial.select(abrangencia)
    else
      abrangencia_territorial.select(abrangencia)
      aguardar_carregamento
    end
  end

  def seleciona_uf_abrangencia(uf)
    uf_abrangencia.select(uf)
  end

  def add_abrangencia
    aguardar_carregamento
    btn_adicionar_abrangencia.click
    aguardar_carregamento
    btn_adicionar_abrangencia.click
    aguardar_carregamento
  end

  def salvar_manifestacao
    btn_salvar.click
    wait_until_msg_sucesso_visible
  end

  def armazena_codigo_gerado_txt(msg_to_clear, nome_arquivo)
    @codigo = msg_cod_gerado.text.gsub(msg_to_clear, '')
    gravar_dados("features/arquivos/requerimentos/#{nome_arquivo}", @codigo)
  end

end
