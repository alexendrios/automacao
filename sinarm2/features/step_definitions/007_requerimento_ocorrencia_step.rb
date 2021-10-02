Quando("solicitar o registro de ocorrência de arma de fogo de pessoa física") do
  @requerimento_ocorrencia = RequerimentoOcorrencia.new
  @requerimento_ocorrencia.load
end

Quando("preencher o formulário de ocorrência de arma de fogo de pessoa física") do
  @requerimento_ocorrencia.seleciona_tipo_formulario("Pessoa Física")
  @requerimento_ocorrencia.cpf_input.click.set("89905839186")
  @nr_cad = @requerimento_ocorrencia.informar_nr_cad("nr_cad_PF.txt")
  @requerimento_ocorrencia.nr_CAD_input.click.set(@nr_cad)
  #@requerimento_ocorrencia.nr_CAD_input.click.set(201500860820968)#Alterar CAD manualmente(Ainda não está automatizado)
  @requerimento_ocorrencia.btn_add_lista.click
  @requerimento_ocorrencia.informar_captcha
  @requerimento_ocorrencia.btn_pesquisar.click

  #***** Visualização dos dados de identificação e da arma *****#
  @requerimento_ocorrencia.btn_proxima.click
  @requerimento_ocorrencia.aguardar_carregamento
  @requerimento_ocorrencia.btn_proxima.click
  @requerimento_ocorrencia.aguardar_carregamento
  @requerimento_ocorrencia.seleciona_tipo_ocorrencia("Extravio/Perda de Arma de Fogo")
  @requerimento_ocorrencia.nr_ocorrencia_input.click.set("01")
  @requerimento_ocorrencia.btn_data_ocorrencia.click
  @requerimento_ocorrencia.data_ocorrencia_today.click
  @requerimento_ocorrencia.seleciona_uf_ocorrencia("DF")
  @requerimento_ocorrencia.seleciona_municipio_ocorrencia("Brasília")
  @requerimento_ocorrencia.seleciona_instituicao("Polícia Federal")
  @requerimento_ocorrencia.unidade_ocorrencia_input.click.set("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_ocorrencia.anexar_boletim
  @requerimento_ocorrencia.btn_proxima.click
  @requerimento_ocorrencia.aguardar_carregamento
  @requerimento_ocorrencia.declaracao_veracidade_check.check
  @requerimento_ocorrencia.seleciona_uf_atendimento("DF")
  @requerimento_ocorrencia.seleciona_municipio_atendimento("Brasília")
  @requerimento_ocorrencia.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_ocorrencia.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de ocorrência de arma de fogo de pessoa física") do
  expect(@requerimento_ocorrencia).to have_text("Solicitação realizada.")
  expect(@requerimento_ocorrencia).to have_text("REQUERIMENTO DE REGISTRO DE OCORRÊNCIA DE ARMA DE FOGO")
  expect(@requerimento_ocorrencia).to have_text("CPF")
  @requerimento_ocorrencia.armazena_numero_txt("requerimento_ocorrencia_PF.txt")
end

# ******** Cenários de ocorrências para pessoa jurídica ********* #
# @requerer_e_manifestar_ocorrencia_PJ
# @requerimento_ocorrencia_PJ
# Cenario: Requerimento de ocorrência de arma de fogo de pessoa juridica
Quando("solicitar o registro de ocorrência de arma de fogo de pessoa juridica") do
  @requerimento_ocorrencia = RequerimentoOcorrencia.new
  @requerimento_ocorrencia.load
end

Quando("preencher o formulário de ocorrência de arma de fogo de pessoa juridica") do
  @requerimento_ocorrencia.seleciona_tipo_formulario("Pessoa Jurídica")
  @requerimento_ocorrencia.cnpj_input.click.set("00730680000107")
  @nr_cad_PJ = @requerimento_ocorrencia.informar_nr_cad("nr_cad_PJ.txt")
  @requerimento_ocorrencia.nr_CAD_input.click.set(@nr_cad_PJ)
  #@requerimento_ocorrencia.nr_CAD_input.click.set(201800904798783)
  @requerimento_ocorrencia.btn_add_lista.click
  @requerimento_ocorrencia.informar_captcha
  @requerimento_ocorrencia.btn_pesquisar.click
  @requerimento_ocorrencia.btn_proxima.click
  @requerimento_ocorrencia.aguardar_carregamento
  @requerimento_ocorrencia.nome_responsavel.click.set("Sebastião da Silva Filho")
  @requerimento_ocorrencia.data_nasc_responsavel_input.click.set("02/07/2019")
  # # O botão today está escondido não sendo possível clicar
  # @requerimento_ocorrencia.btn_data_nasc.click
  # @requerimento_ocorrencia.data_nasc_today.click
  @requerimento_ocorrencia.cpf_responsavel.click.set("51100771000")
  @requerimento_ocorrencia.pai_responsavel.click.set("Sebastião da Silva Pai")
  @requerimento_ocorrencia.mae_responsavel.click.set("Tereza de Souza")
  @requerimento_ocorrencia.btn_proxima.click
  @requerimento_ocorrencia.aguardar_carregamento

  # Dados da arma
  @requerimento_ocorrencia.btn_proxima.click
  @requerimento_ocorrencia.aguardar_carregamento
  @requerimento_ocorrencia.seleciona_tipo_ocorrencia("Extravio/Perda de Arma de Fogo")
  @requerimento_ocorrencia.nr_ocorrencia_input.click.set("01")
  @requerimento_ocorrencia.btn_data_ocorrencia.click
  @requerimento_ocorrencia.data_ocorrencia_today.click
  @requerimento_ocorrencia.seleciona_uf_ocorrencia("DF")
  @requerimento_ocorrencia.seleciona_municipio_ocorrencia("Brasília")
  @requerimento_ocorrencia.seleciona_instituicao("Polícia Federal")
  @requerimento_ocorrencia.unidade_ocorrencia_input.click.set("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_ocorrencia.anexar_boletim
  @requerimento_ocorrencia.btn_proxima.click
  @requerimento_ocorrencia.aguardar_carregamento
  @requerimento_ocorrencia.declaracao_veracidade_check.check
  @requerimento_ocorrencia.seleciona_uf_atendimento("DF")
  @requerimento_ocorrencia.seleciona_municipio_atendimento("Brasília")
  @requerimento_ocorrencia.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_ocorrencia.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de ocorrência de arma de fogo de pessoa juridica") do
  expect(@requerimento_ocorrencia).to have_text("Solicitação realizada.")
  expect(@requerimento_ocorrencia).to have_text("REQUERIMENTO DE REGISTRO DE OCORRÊNCIA DE ARMA DE FOGO")
  expect(@requerimento_ocorrencia).to have_text("CNPJ")
  @requerimento_ocorrencia.armazena_numero_txt("requerimento_ocorrencia_PJ.txt")
end
