Quando("solicitar inclusão de porte funcional") do
  @confeccionar_registro_porte = ConfeccionarRegistroPortePage.new
  puts "Realizando login e acessando menu"
  @confeccionar_registro_porte.acessar_inclusao_porte_funcional
end

Quando("informar os dados para pesquisa de um servidor publico") do
  @confeccionar_registro_porte.pesquisar_servidor
end

Quando("seleciono o servidor") do
  @confeccionar_registro_porte.selecionar_servidor
end

Quando("preencho os dados do porte") do
  @confeccionar_registro_porte.preencher_dados_porte
end

Quando("clico em criar porte") do
  @confeccionar_registro_porte.clicar_botao_criar_porte
end

Entao("deve-se visualizar os dados do porte cadastrado") do
  @confeccionar_registro_porte.validar_cadastro_porte
end
#----------------------------------------------------------------#
#ACESSAR MENU CONFECCIONAR REGISTRO PORTE
#----------------------------------------------------------------#

Quando("solicitar confeccionar registro ou porte de arma de fogo") do
  @confeccionar_registro_porte = ConfeccionarRegistroPortePage.new
  puts "Realizando login e acessando menu"
  @confeccionar_registro_porte.acessar_confeccionar_registro_porte
end

#----------------------------------------------------------------#
#CONFECCIONAR PORTE ARMA DE FOGO PELO PARAMETRO DE DADOS DO PORTE
#----------------------------------------------------------------#
Quando("preencher os dados do porte") do
  puts "Preenchendo parametros do porte de arma"
  @confeccionar_registro_porte.preencher_parametros_dados_porte
  @confeccionar_registro_porte.seleciona_tipo_documento("Porte de Arma de Fogo")
  @confeccionar_registro_porte.check_dados_porte_input.click
  @confeccionar_registro_porte.nr_porte_input.click.set("A00088761")
  @confeccionar_registro_porte.btn_pesquisar.click
end

#---------------------------------------------------------------------------#
#CONFECCIONAR PORTE ARMA DE FOGO PELO PARAMETRO DE DADOS DE EMISSÃO DO PORTE
#---------------------------------------------------------------------------#
Quando("preencher os dados de emissão") do
  puts "Preenchendo parametros dos dados de emissão"
  @confeccionar_registro_porte.seleciona_tipo_documento("Porte de Arma de Fogo")
  @confeccionar_registro_porte.check_dados_emissao_input.click
  @confeccionar_registro_porte.aguardar_carregamento
  @confeccionar_registro_porte.seleciona_unidade_expedidora("SR/PF/DF")
  @confeccionar_registro_porte.data_emissao_inicio_input.click.set("05072019")
  @confeccionar_registro_porte.data_emissao_fim_input.click.set("05072024")
  @confeccionar_registro_porte.btn_pesquisar.click
end

#---------------------------------------------------------------------------#
#CONFECCIONAR REGISTRO ARMA DE FOGO PELO PARAMETRO DE DADOS DE ARMA DE FOGO
#---------------------------------------------------------------------------#
Quando("preencher os dados de registro por arma de fogo") do
  puts "Preenchendo parametros do registro"
  @confeccionar_registro_porte.seleciona_tipo_documento("Registro de Arma de Fogo")
  @confeccionar_registro_porte.check_arma_fogo_input.click
  @confeccionar_registro_porte.aguardar_carregamento
  @confeccionar_registro_porte.nr_serie_input.click.set("KMA18446")
  @confeccionar_registro_porte.nr_cad_input.click.set("201900907698816")
  @confeccionar_registro_porte.nr_registro_input.click.set("902631475")
  @confeccionar_registro_porte.btn_pesquisar.click
end

#----------------------------------------------------------------------#
#CONFECCIONAR REGISTRO ARMA DE FOGO PELO PARAMETRO DE DADOS DE REGISTRO
#----------------------------------------------------------------------#
Quando("preencher os dados de registro") do
  puts "Preenchendo parametros do registro"
  @confeccionar_registro_porte.seleciona_tipo_documento("Registro de Arma de Fogo")
  @confeccionar_registro_porte.check_dados_registro_input.click
  @confeccionar_registro_porte.aguardar_carregamento
  @confeccionar_registro_porte.seleciona_unidade_expedidora("SR/PF/DF")
  @confeccionar_registro_porte.data_emissao_inicio_registro_input.click.set("19072019")
  @confeccionar_registro_porte.data_emissao_fim_registro_input.click.set("20072019")
  @confeccionar_registro_porte.btn_pesquisar.click
  @confeccionar_registro_porte.aguardar_carregamento
end

#--------------------------------------------------------------------------#
#CONFECCIONAR REGISTRO ARMA DE FOGO PELO PARAMETRO DE DADOS DO PROPRIETARIO
#--------------------------------------------------------------------------#
Quando("preencher os dados do proprietario") do
  puts "Preenchendo parametros do registro"
  @confeccionar_registro_porte.seleciona_tipo_documento("Registro de Arma de Fogo")
  @confeccionar_registro_porte.check_dados_proprietario_input.click
  @confeccionar_registro_porte.aguardar_carregamento
  @confeccionar_registro_porte.cpf_cnpj_proprietario.click.set("37162435000657")
  @confeccionar_registro_porte.btn_pesquisar.click
  @confeccionar_registro_porte.aguardar_carregamento
end

Quando("adicionar registro a fila de impressão") do
  puts "Adicionando a fila de impressão"
  @confeccionar_registro_porte.aguardar_carregamento
  @confeccionar_registro_porte.btn_adicionar_registro_fila.click
end

Quando("adicionar a fila de impressão") do
  puts "Adicionando a fila de impressão"
  @confeccionar_registro_porte.aguardar_carregamento
  @confeccionar_registro_porte.btn_adicionar_porte_fila.click
end

Quando("clicar no botão para imprimir") do
  puts "Clicando no botão para imprimir"
  @confeccionar_registro_porte.aguardar_carregamento
  @confeccionar_registro_porte.btn_imprimir.click
end

Entao("deve-se visualizar o pdf de impressão") do
  puts "Visualizando página de impressão"
  @confeccionar_registro_porte.mudar_foco
  @confeccionar_registro_porte.aguardar_carregamento_visible
end
