Quando("solicitar a Renovação de Registro para pessoa física") do
  @requerimento_renovacao = RequerimentoRenovacaoRegistroPage.new
  @requerimento_renovacao.load
end

Quando("preencher o formulário de Renovação de Registro para pessoa física") do
  @requerimento_renovacao.escolha_tipo_pessoa("Pessoa Física")
  @requerimento_renovacao.select_categoria_PF("Cidadão")
  @requerimento_renovacao.cpf_input.click.set("89905839186")
  # @TODO: Parametrizar nr_CAD
  @nr_cad = @requerimento_renovacao.informar_nr_cad("nr_cad_PF.txt")
  @requerimento_renovacao.nr_CAD_input.click.set(@nr_cad)
  #@requerimento_renovacao.nr_CAD_input.click.set(201500860820968)#Alterar CAD manualmente(Ainda não está automatizado)
  @requerimento_renovacao.btn_add_lista.click
  @requerimento_renovacao.informar_captcha
  @requerimento_renovacao.btn_pesquisar.click

  #***** Visualização dos dados de identificação e da arma *****#
  @requerimento_renovacao.btn_proxima.click
  @requerimento_renovacao.aguardar_carregamento
  @requerimento_renovacao.btn_proxima.click
  @requerimento_renovacao.aguardar_carregamento
  @requerimento_renovacao.declaracao_renovacao_txt.click.set("Declaro que não habitam.")
  @requerimento_renovacao.btn_proxima.click
  @requerimento_renovacao.aguardar_carregamento
  @requerimento_renovacao.declaracao_veracidade_check.check
  @requerimento_renovacao.seleciona_uf_atendimento("DF")
  @requerimento_renovacao.seleciona_municipio_atendimento("Brasília")
  @requerimento_renovacao.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_renovacao.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de Renovação de Registro para pessoa física") do
  expect(@requerimento_renovacao).to have_text("Solicitação realizada.")
  expect(@requerimento_renovacao).to have_text("REQUERIMENTO DE RENOVAÇÃO DE REGISTRO DE ARMA DE FOGO")
  expect(@requerimento_renovacao).to have_text("CPF")
  @requerimento_renovacao.armazena_numero_txt("requerimento_renovacao_registro_PF.txt")
end

# ******** Cenários de renovação para pessoa jurídica ********* #

# @requerer_e_manifestar_renovacao_registro_PJ
# @requerimento_renovacao_registro_PJ
# Cenario: Requerimento de Renovação de Registro para pessoa juridica
Quando("solicitar a Renovação de Registro para pessoa juridica") do
  @requerimento_renovacao = RequerimentoRenovacaoRegistroPage.new
  @requerimento_renovacao.load
end

Quando("preencher o formulário de Renovação de Registro para pessoa juridica") do
  @requerimento_renovacao.escolha_tipo_pessoa("Pessoa Jurídica")
  @requerimento_renovacao.select_categoria_PJ("Empresa Comercial")
  @requerimento_renovacao.cnpj_input.click.set("00730680000107")
  # @TODO: Parametrizar nr_CAD
  sleep(3)
  @nr_cad_PJ = @requerimento_renovacao.informar_nr_cad("nr_cad_PJ.txt")
  @requerimento_renovacao.nr_CAD_input.click.set(@nr_cad_PJ)
  #@requerimento_renovacao.nr_CAD_input.click.set(201800904798783)
  @requerimento_renovacao.btn_add_lista.click
  @requerimento_renovacao.informar_captcha
  @requerimento_renovacao.btn_pesquisar.click
  @requerimento_renovacao.btn_proxima.click
  @requerimento_renovacao.aguardar_carregamento
  @requerimento_renovacao.btn_proxima.click
  @requerimento_renovacao.aguardar_carregamento
  @requerimento_renovacao.declaracao_necessidade_check.check
  @requerimento_renovacao.btn_proxima.click
  @requerimento_renovacao.aguardar_carregamento
  @requerimento_renovacao.declaracao_veracidade_check.check
  @requerimento_renovacao.seleciona_uf_atendimento("DF")
  @requerimento_renovacao.seleciona_municipio_atendimento("Brasília")
  @requerimento_renovacao.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_renovacao.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de Renovação de Registro para pessoa juridica") do
  expect(@requerimento_renovacao).to have_text("Solicitação realizada.")
  expect(@requerimento_renovacao).to have_text("REQUERIMENTO DE RENOVAÇÃO DE REGISTRO DE ARMA DE FOGO")
  expect(@requerimento_renovacao).to have_text("CNPJ")
  @requerimento_renovacao.armazena_numero_txt("requerimento_renovacao_registro_PJ.txt")
end
