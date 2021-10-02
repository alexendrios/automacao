Quando("solicitar o porte de arma de fogo") do
  @requerimento_porte = RequerimentoPortePage.new
  @requerimento_porte.load
end

Quando("preencher o formulário de porte de arma de fogo") do
  @requerimento_porte.cpf_input.click.set("89905839186")
  @nr_cad = @requerimento_porte.informar_nr_cad("nr_cad_PF.txt")
  @requerimento_porte.nr_CAD_input.click.set(@nr_cad)
  @requerimento_porte.btn_add_lista.click
  @requerimento_porte.informar_captcha
  @requerimento_porte.btn_pesquisar.click

  #***** Visualização dos dados de identificação e da arma *****#
  @requerimento_porte.btn_proxima.click
  @requerimento_porte.aguardar_carregamento
  @requerimento_porte.btn_proxima.click
  @requerimento_porte.aguardar_carregamento

  @declaracao = "Grande índice de crimes contra o patrimônio," +
                "roubo seguido de morte(latrocínios)," +
                "bem como os de elevados índices de crimes dolosos contra a vida(homicídios)."

  @requerimento_porte.declaracao_necessidade_textarea.click.set(@declaracao)
  @requerimento_porte.btn_proxima.click
  @requerimento_porte.aguardar_carregamento
  @requerimento_porte.declaracao_veracidade_check.check
  @requerimento_porte.seleciona_uf_atendimento("DF")
  @requerimento_porte.seleciona_municipio_atendimento("Brasília")
  @requerimento_porte.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_porte.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de porte de arma de fogo") do
  expect(@requerimento_porte).to have_text("Solicitação realizada.")
  expect(@requerimento_porte).to have_text("REQUERIMENTO DE PORTE DE ARMA DE FOGO")
  expect(@requerimento_porte).to have_text("CPF")
  @requerimento_porte.armazena_numero_txt("requerimento_porte.txt")
end
