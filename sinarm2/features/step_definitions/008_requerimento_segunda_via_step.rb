#***** Requerimento de segunda via de registro de arma para pessoa física *****#
Quando("solicitar o requerimento de segunda via de registro de arma para pessoa fisica") do
  @requerimento_segunda_via = RequerimentoSegundaViaPage.new
  @requerimento_segunda_via.load
end

Quando("preencher o formulário de requerimento de segunda via de registro de arma para pessoa fisica") do
  @requerimento_segunda_via.seleciona_tipo_formulario("Pessoa Física")
  @requerimento_segunda_via.seleciona_categoria("Cidadão")
  @requerimento_segunda_via.seleciona_tipo_documento("Registro de Arma de Fogo")
  @requerimento_segunda_via.cpf_input.click.set("89905839186")
  @requerimento_segunda_via.data_nascimento.click.set("02021989")
  @requerimento_segunda_via.seleciona_calibre(".380")
  @requerimento_segunda_via.seleciona_especie("Pistola")
  @requerimento_segunda_via.seleciona_marca("TAURUS (FORJAS TAURUS S.A.)")
  @requerimento_segunda_via.informar_nr_serie("nr_serie_PF_utilizados.txt")
  @requerimento_segunda_via.informar_captcha
  @requerimento_segunda_via.btn_pesquisar.click

  #***** Visualização dos dados de identificação e da arma *****#
  @requerimento_segunda_via.btn_proxima.click
  @requerimento_segunda_via.aguardar_carregamento
  @requerimento_segunda_via.btn_proxima.click
  @requerimento_segunda_via.aguardar_carregamento
  @requerimento_segunda_via.seleciona_tipo_de_ocorrencia("Documento danificado/mau estado de conservação (sem registro de ocorrência)")

  if (@requerimento_segunda_via.documento_danificado_option.selected?)
    @requerimento_segunda_via.btn_proxima.click
    @requerimento_segunda_via.aguardar_carregamento
  else
    @requerimento_segunda_via.nr_ocorrencia_input.click.set(0123)
    @requerimento_segunda_via.btn_data_ocorrencia.click
    @requerimento_segunda_via.data_ocorrencia_today.click
    @requerimento_segunda_via.seleciona_uf_ocorrencia("DF")
    @requerimento_segunda_via.seleciona_municipio_ocorrencia("Brasília")
    @requerimento_segunda_via.seleciona_instituicao_ocorrencia("Polícia Federal")
    @requerimento_segunda_via.unidade_ocorrencia_input.click.set("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
    @requerimento_segunda_via.btn_proxima.click
    @requerimento_segunda_via.aguardar_carregamento
  end

  @requerimento_segunda_via.declaracao_veracidade_check.check
  @requerimento_segunda_via.seleciona_uf_atendimento("DF")
  @requerimento_segunda_via.seleciona_municipio_atendimento("Brasília")
  @requerimento_segunda_via.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_segunda_via.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de segunda via de registro de arma para pessoa fisica") do
  expect(@requerimento_segunda_via).to have_text("Solicitação realizada.")
  expect(@requerimento_segunda_via).to have_text("REQUERIMENTO DE SEGUNDA VIA DE REGISTRO DE ARMA DE FOGO")
  expect(@requerimento_segunda_via).to have_text("CPF")
  @requerimento_segunda_via.armazena_numero_txt("requerimento_segunda_via_registro_PF.txt")
end

#***** Requerimento de segunda via de porte de arma *****#
Quando("solicitar o requerimento de segunda via de porte de arma") do
  @requerimento_segunda_via = RequerimentoSegundaViaPage.new
  @requerimento_segunda_via.load
end

Quando("preencher o formulário de requerimento de segunda via de porte de arma") do
  @requerimento_segunda_via.seleciona_tipo_formulario("Pessoa Física")
  @requerimento_segunda_via.seleciona_categoria("Cidadão")
  @requerimento_segunda_via.seleciona_tipo_documento("Porte de Arma de Fogo")
  @requerimento_segunda_via.cpf_input.click.set("89905839186")
  @requerimento_segunda_via.data_nascimento.click.set("02021989")
  @requerimento_segunda_via.seleciona_calibre(".380")
  @requerimento_segunda_via.seleciona_especie("Pistola")
  @requerimento_segunda_via.seleciona_marca("TAURUS (FORJAS TAURUS S.A.)")

  # Necessário utilizar uma arma que já tenha porte
  @requerimento_segunda_via.nr_serie_input.click.set("KLU64080")

  # precisa pagar GRU, então não será possível utilizar dados dinâmicos
  # @requerimento_segunda_via.informar_nr_serie("nr_serie_PF_utilizados.txt")

  @requerimento_segunda_via.informar_captcha
  @requerimento_segunda_via.btn_pesquisar.click

  #***** Visualização dos dados de identificação e da arma *****#
  @requerimento_segunda_via.btn_proxima.click
  @requerimento_segunda_via.aguardar_carregamento
  @requerimento_segunda_via.btn_proxima.click
  @requerimento_segunda_via.aguardar_carregamento
  @requerimento_segunda_via.seleciona_tipo_de_ocorrencia("Documento danificado/mau estado de conservação (sem registro de ocorrência)")

  if (@requerimento_segunda_via.documento_danificado_option.selected?)
    @requerimento_segunda_via.btn_proxima.click
    @requerimento_segunda_via.aguardar_carregamento
  else
    @requerimento_segunda_via.nr_ocorrencia_input.click.set(0123)
    @requerimento_segunda_via.btn_data_ocorrencia.click
    @requerimento_segunda_via.data_ocorrencia_today.click
    @requerimento_segunda_via.seleciona_uf_ocorrencia("DF")
    @requerimento_segunda_via.seleciona_municipio_ocorrencia("Brasília")
    @requerimento_segunda_via.seleciona_instituicao_ocorrencia("Polícia Federal")
    @requerimento_segunda_via.unidade_ocorrencia_input.click.set("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
    @requerimento_segunda_via.btn_proxima.click
    @requerimento_segunda_via.aguardar_carregamento
  end

  @requerimento_segunda_via.declaracao_veracidade_check.check
  @requerimento_segunda_via.seleciona_uf_atendimento("DF")
  @requerimento_segunda_via.seleciona_municipio_atendimento("Brasília")
  @requerimento_segunda_via.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_segunda_via.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de segunda via de porte de arma") do
  expect(@requerimento_segunda_via).to have_text("Solicitação realizada.")
  expect(@requerimento_segunda_via).to have_text("REQUERIMENTO DE SEGUNDA VIA DE PORTE DE ARMA DE FOGO")
  expect(@requerimento_segunda_via).to have_text("CPF")
  @requerimento_segunda_via.armazena_numero_txt("requerimento_segunda_via_porte.txt")
end

# ******** Cenários de 2ª via para pessoa jurídica ********* #

# @requerer_e_manifestar_segunda_via_registro_PJ
# @requerimento_segunda_via_registro_PJ
# Cenario: Requerimento de segunda via de registro de arma para pessoa juridica
Quando("solicitar o requerimento de segunda via de registro de arma para pessoa juridica") do
  @requerimento_segunda_via = RequerimentoSegundaViaPage.new
  @requerimento_segunda_via.load
end

Quando("preencher o formulário de requerimento de segunda via de registro de arma para pessoa juridica") do
  @requerimento_segunda_via.seleciona_tipo_formulario("Pessoa Jurídica")
  @requerimento_segunda_via.seleciona_categoria("Empresa Comercial")
  @requerimento_segunda_via.seleciona_tipo_documento("Registro de Arma de Fogo")
  @requerimento_segunda_via.cnpj_input.click.set("00730680000107")
  @requerimento_segunda_via.seleciona_calibre(".380")
  @requerimento_segunda_via.seleciona_especie("Pistola")
  @requerimento_segunda_via.seleciona_marca("TAURUS (FORJAS TAURUS S.A.)")
  @requerimento_segunda_via.informar_nr_serie("nr_serie_PJ_utilizados.txt")
  @requerimento_segunda_via.informar_captcha
  @requerimento_segunda_via.btn_pesquisar.click
  @requerimento_segunda_via.btn_proxima.click
  @requerimento_segunda_via.aguardar_carregamento
  @requerimento_segunda_via.btn_proxima.click
  @requerimento_segunda_via.aguardar_carregamento

  @requerimento_segunda_via.seleciona_tipo_de_ocorrencia("Documento danificado/mau estado de conservação (sem registro de ocorrência)")

  if (@requerimento_segunda_via.documento_danificado_option.selected?)
    @requerimento_segunda_via.btn_proxima.click
    @requerimento_segunda_via.aguardar_carregamento
  else
    @requerimento_segunda_via.nr_ocorrencia_input.click.set(0123)
    @requerimento_segunda_via.btn_data_ocorrencia.click
    @requerimento_segunda_via.data_ocorrencia_today.click
    @requerimento_segunda_via.seleciona_uf_ocorrencia("DF")
    @requerimento_segunda_via.seleciona_municipio_ocorrencia("Brasília")
    @requerimento_segunda_via.seleciona_instituicao_ocorrencia("Polícia Federal")
    @requerimento_segunda_via.unidade_ocorrencia_input.click.set("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
    @requerimento_segunda_via.btn_proxima.click
    @requerimento_segunda_via.aguardar_carregamento
  end

  @requerimento_segunda_via.declaracao_veracidade_check.check
  @requerimento_segunda_via.seleciona_uf_atendimento("DF")
  @requerimento_segunda_via.seleciona_municipio_atendimento("Brasília")
  @requerimento_segunda_via.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_segunda_via.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de segunda via de registro de arma para pessoa juridica") do
  expect(@requerimento_segunda_via).to have_text("Solicitação realizada.")
  expect(@requerimento_segunda_via).to have_text("REQUERIMENTO DE SEGUNDA VIA DE REGISTRO DE ARMA DE FOGO")
  expect(@requerimento_segunda_via).to have_text("CNPJ")
  @requerimento_segunda_via.armazena_numero_txt("requerimento_segunda_via_registro_PJ.txt")
end

# Quando("solicitar o requerimento de segunda via de documento para pessoa fisica") do
#   @requerimento_segunda_via = RequerimentoSegundaViaPage.new
#   @requerimento_segunda_via.load
#   @requerimento_segunda_via.seleciona_tipo_formulario('Pessoa Física')
# end

# Quando("preencher as informações do formulário para pessoa física") do |table|
#   @informacoes = table.rows_hash
#   @requerimento_segunda_via.seleciona_categoria(@informacoes[:tipo_categoria])
#   @requerimento_segunda_via.seleciona_tipo_documento(@informacoes[:tipo_documento])
#   @requerimento_segunda_via.cpf_input.click.set(@informacoes[:CPF])
#   #@Todo : Preencher demais informações
# end

# Entao("deve visualizar o {string}") do |msg_requerimento, nome_arquivo|
#   expect(@requerimento_segunda_via).to have_text(msg_requerimento)
#   @requerimento_segunda_via.armazena_numero_txt(nome_arquivo)
# end
