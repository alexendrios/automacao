Quando("solicitar a Guia de Trânsito para pessoa física") do
  @requerimento_guia_transito = RequerimentoGuiaTransitoPage.new
  @requerimento_guia_transito.load
end

Quando("preencher o formulário de Guia de Trânsito para pessoa física") do
  @requerimento_guia_transito.escolha_tipo_pessoa("Pessoa Física")
  @requerimento_guia_transito.cpf_input.click.set("89905839186")
  sleep(3)
  # @TODO: Parametrizar nr_CAD
  @nr_cad = @requerimento_guia_transito.informar_nr_cad("nr_cad_PF.txt")
  @requerimento_guia_transito.nr_CAD_input.click.set(@nr_cad)
  @requerimento_guia_transito.btn_add_lista.click
  @requerimento_guia_transito.informar_captcha
  @requerimento_guia_transito.btn_pesquisar.click
  @requerimento_guia_transito.btn_proxima.click
  @requerimento_guia_transito.aguardar_carregamento
  @requerimento_guia_transito.btn_proxima.click
  @requerimento_guia_transito.aguardar_carregamento

  #Endereço Origem
  @requerimento_guia_transito.seleciona_motivo_transito("Trânsito de Aquisição de Arma de Fogo")
  @requerimento_guia_transito.check_via_transito("Terrestre")
  @requerimento_guia_transito.cep_origem.click.set("72020022")
  @requerimento_guia_transito.logradouro_origem.click.set("Área Especial 04")
  @requerimento_guia_transito.complemento_origem.click.set("(QSD)")
  @requerimento_guia_transito.seleciona_tipo_endereco_origem("Residencial")
  @requerimento_guia_transito.nr_endereco_origem.click.set(27)
  @requerimento_guia_transito.bairro_origem.click.set("Taguatinga Sul")
  @requerimento_guia_transito.seleciona_uf_origem("DF")
  @requerimento_guia_transito.seleciona_municipio_origem("Brasília")

  #Endereço Destino
  @requerimento_guia_transito.cep_destino.click.set("74959198")
  @requerimento_guia_transito.logradouro_destino.click.set("Rua 01")
  @requerimento_guia_transito.complemento_destino.click.set("Rua 01")
  @requerimento_guia_transito.seleciona_tipo_endereco_destino("Residencial")
  @requerimento_guia_transito.nr_endereco_destino.click.set(300)
  @requerimento_guia_transito.bairro_destino.click.set("Parque Hayala")
  @requerimento_guia_transito.seleciona_uf_destino("GO")
  @requerimento_guia_transito.seleciona_municipio_destino("Goiânia")
  @requerimento_guia_transito.btn_data_inicial_prevista.click
  @requerimento_guia_transito.data_inicial_today.click
  @requerimento_guia_transito.periodo_transito_estimado.click.set(2)
  @requerimento_guia_transito.btn_proxima.click
  @requerimento_guia_transito.declaracao_veracidade_check.check
  @requerimento_guia_transito.seleciona_uf_atendimento("DF")
  @requerimento_guia_transito.seleciona_municipio_atendimento("Brasília")
  @requerimento_guia_transito.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_guia_transito.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de Guia de Trânsito para pessoa física") do
  expect(@requerimento_guia_transito).to have_text("Solicitação realizada.")
  expect(@requerimento_guia_transito).to have_text("REQUERIMENTO DE GUIA DE TRÂNSITO DE ARMA DE FOGO")
  expect(@requerimento_guia_transito).to have_text("CPF")
  @requerimento_guia_transito.armazena_numero_txt("requerimento_guia_transito_PF.txt")
end

# ********Cenários de guia de trânsito de pessoa jurídica ********* #
# @requerimento_guia_de_transito_PJ
# Requerimento de Guia de Trânsito para pessoa jurídica
Quando("solicitar a Guia de Trânsito para pessoa jurídica") do
  @requerimento_guia_transito = RequerimentoGuiaTransitoPage.new
  @requerimento_guia_transito.load
end

Quando("preencher o formulário de Guia de Trânsito para pessoa jurídica") do
  @requerimento_guia_transito.escolha_tipo_pessoa("Pessoa Jurídica")
  @requerimento_guia_transito.cnpj_input.click.set("00730680000107")
  # @TODO: Parametrizar nr_CAD para PJ
  @nr_cad_PJ = @requerimento_guia_transito.informar_nr_cad("nr_cad_PJ.txt")
  @requerimento_guia_transito.nr_CAD_input.click.set(@nr_cad_PJ)
  @requerimento_guia_transito.btn_add_lista.click
  @requerimento_guia_transito.informar_captcha
  @requerimento_guia_transito.btn_pesquisar.click

  #***** Visualização dos dados de identificação e da arma *****#
  @requerimento_guia_transito.btn_proxima.click
  @requerimento_guia_transito.aguardar_carregamento
  @requerimento_guia_transito.btn_proxima.click
  @requerimento_guia_transito.aguardar_carregamento
  @requerimento_guia_transito.nome_reponsavel_transito.click.set("Paulo Cauã Nunes")
  @requerimento_guia_transito.cpf_responsavel.click.set("89905839186")
  @requerimento_guia_transito.btn_proxima.click
  @requerimento_guia_transito.aguardar_carregamento
  @requerimento_guia_transito.btn_proxima.click
  @requerimento_guia_transito.aguardar_carregamento

  #Endereço Origem
  @requerimento_guia_transito.seleciona_motivo_transito("Trânsito de Aquisição de Arma de Fogo")
  @requerimento_guia_transito.check_via_transito("Terrestre")
  @requerimento_guia_transito.cep_origem.click.set("72020022")
  @requerimento_guia_transito.logradouro_origem.click.set("Área Especial 04")
  @requerimento_guia_transito.complemento_origem.click.set("(QSD)")
  @requerimento_guia_transito.seleciona_tipo_endereco_origem("Residencial")
  @requerimento_guia_transito.nr_endereco_origem.click.set(27)
  @requerimento_guia_transito.bairro_origem.click.set("Taguatinga Sul")
  @requerimento_guia_transito.seleciona_uf_origem("DF")
  @requerimento_guia_transito.seleciona_municipio_origem("Brasília")

  #Endereço Destino
  @requerimento_guia_transito.cep_destino.click.set("74959198")
  @requerimento_guia_transito.logradouro_destino.click.set("Rua 01")
  @requerimento_guia_transito.complemento_destino.click.set("Rua 01")
  @requerimento_guia_transito.seleciona_tipo_endereco_destino("Residencial")
  @requerimento_guia_transito.nr_endereco_destino.click.set(300)
  @requerimento_guia_transito.bairro_destino.click.set("Parque Hayala")
  @requerimento_guia_transito.seleciona_uf_destino("GO")
  @requerimento_guia_transito.seleciona_municipio_destino("Goiânia")
  @requerimento_guia_transito.btn_data_inicial_prevista.click
  @requerimento_guia_transito.data_inicial_today.click
  @requerimento_guia_transito.periodo_transito_estimado.click.set(2)
  @requerimento_guia_transito.btn_proxima.click
  @requerimento_guia_transito.declaracao_veracidade_check.check
  @requerimento_guia_transito.seleciona_uf_atendimento("DF")
  @requerimento_guia_transito.seleciona_municipio_atendimento("Brasília")
  @requerimento_guia_transito.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_guia_transito.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de Guia de Trânsito para pessoa jurídica") do
  expect(@requerimento_guia_transito).to have_text("Solicitação realizada.")
  expect(@requerimento_guia_transito).to have_text("REQUERIMENTO DE GUIA DE TRÂNSITO DE ARMA DE FOGO")
  expect(@requerimento_guia_transito).to have_text("CNPJ")
  @requerimento_guia_transito.armazena_numero_txt("requerimento_guia_transito_PJ.txt")
end
