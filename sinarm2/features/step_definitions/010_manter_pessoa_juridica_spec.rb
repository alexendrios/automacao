Quando("solicitar a consulta de pessoa juridica") do
  @manter_pj = ManterPJPage.new
  puts "Realizando login e acessando menu"
  @manter_pj.acessar_consulta_pj
end

#------------------------------#
#CONSULTA COM MUITOS PARAMETROS
#------------------------------#
Quando("preencher muitos parametros para consulta de pessoa juridica") do
  puts "Preenchendo muitos parametros para consulta"
  @manter_pj.preencher_dados_consulta_pj
end
#------------------------------#
#CONSULTA COM POUCOS PARAMETROS
#------------------------------#
Quando("preencher poucos parametros para consulta de pessoa juridica") do
  puts "Preenchendo poucos parametros para consulta"
  @manter_pj.preencher_dados_consulta_pj_poucos_parametros
end

#-----------------------------------#
#DETALHAMENTO DE FABRICANTE QUALQUER
#-----------------------------------#
Entao("deve-se visualizar o detalhamento") do
  puts "Visualizando detalhamento"
  expect(@manter_pj).to have_text("Detalhar Pessoa Jurídica")
end

#-----------------------------------#
#DETALHAMENTO DE FABRICANTE QUALQUER
#-----------------------------------#
Quando("clicar para detalhar pessoa juridica") do
  puts "Clicando no botão para detalhar PJ"
  @manter_pj.btn_detalhar_registro.click
end

Entao("deve-se visualizar o detalhamento das vendas") do
  puts "Visualizando detalhamento"
  expect(@manter_pj).to have_text("Período do 1° Registro")
end

#---------------------------------#
#DETALHAMENTO DA FABRICANTE TAURUS
#---------------------------------#
Quando("realizo a consulta da fabricante TAURUS") do
  puts "Consultando a fabricante TAURUS"
  @manter_pj.preencher_dados_consulta_taurus
end

Quando("caminhas nas abas") do
  @manter_pj.aba_estoque_armas.click
  @manter_pj.aguardar_carregamento
  @manter_pj.aba_vendas.click
end

#-----------------------#
#CONSULTAR PESSOA JURIDICA
#-----------------------#
Entao("deve-se visualizar o resultado da consulta de pessoa juridica") do
  puts "Visualizando resultado da consulta"
  expect(@manter_pj).to have_text("Resultado")
end

#---------------------------#
#  INCLUIR PESSOA JURÍDICA
#---------------------------#

Quando("Solicitar a inclusão de pessoa juridica") do
  @manter_pj = ManterPJPage.new
  puts "Realizando login e acessando menu"
  @manter_pj.acessar_incluir_pj
end

Quando("preencher o formulário para inclusão") do
  puts "Preenchendo dados de inclusão"
  @manter_pj.incluir_dados_pessoa_juridica
end

Quando("preencher o formulário para inclusão de revendedor") do
  puts "Preenchendo dados de inclusão"
  @manter_pj.incluir_dados_pessoa_juridica_revendedor
end

Quando("salvar a inclusão") do
  puts "Salvando inclusão"
  @manter_pj.btn_salvar.click
end

Então("deve-se visualizar") do
  puts "Visualizando mensagem de sucesso"
  expect(@manter_pj).to have_text("Operação efetuada com sucesso.")
end
