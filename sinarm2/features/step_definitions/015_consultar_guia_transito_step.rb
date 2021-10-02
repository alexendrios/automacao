
Quando("solicitar a consulta de guia de transito") do
  @guia_transito = GuiaTransitoPage.new
  puts "Realizando login e acessando menu"
  @guia_transito.acessar_consulta_guia_transito
end

Quando("preencher os parametros para consulta de guia de transito") do
  puts "Realizando consulta de guia de transito"
  @guia_transito.nr_guia_transito_input.click.set("201906191451169343")
  @guia_transito.btn_pesquisar_guia_transito.click
end

Entao("deve-se visualizar o resultado da consulta da guia") do
  puts "Visualizando detalhamento de guia de transito"
  expect(@guia_transito).to have_text("Detalhe da Guia de Trânsito 201906191451169343")
end

#-------------------------------------------#
#VERIFICAÇÃO DE CAMPO DE CONSULTA OBRIGATÓRIO
#-------------------------------------------#
Quando("não preencher os parametros para consulta de guia de transito") do
  puts "Realizando a pesquisa sem passar os parâmetros de consulta"
  @guia_transito.btn_pesquisar_guia_transito.click
end

Entao("deve-se visualizar a mensagem de campo obrigatório") do
  puts "Visualizando mensagem de campo obrigatório"
  expect(@guia_transito).to have_text("O campo Número de Autorização da Guia de Trânsito é obrigatório.")
end
