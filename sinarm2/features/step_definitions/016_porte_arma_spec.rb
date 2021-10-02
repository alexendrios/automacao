#-------------------------------#
#CONSULTAR PORTE DE ARMA DE FOGO
#-------------------------------#
Quando("solicitar a pesquisa de porte de arma de fogo") do
  @porte_arma = PorteArmaPage.new
  puts "Realizando login e acessando menu"
  @porte_arma.acessar_consulta_porte
end

Quando("preencher os parametros para consulta de porte de arma de fogo") do
  puts "Realizando consulta de porte de arma"
  @porte_arma.preencher_parametros_para_consulta_de_porte
end

Entao("deve-se visualizar o resultado da consulta") do
  puts "Verificando se a consulta foi realizada"
  expect(@porte_arma).to have_text("Resultado")
end

Quando("clicar no botão para detalhar porte") do
  puts "Detalhando porte de arma"
  @porte_arma.btn_detalhar_porte.click
end

Entao("deve-se visualizar o detalhamento de porte de arma de fogo") do
  puts "Visualizando detalhamento de porte de arma"
  expect(@porte_arma).to have_text("Detalhe do Porte de Arma de Fogo")
end

#--------------------------------------------#
#VERIFICAÇÃO DE CAMPO DE CONSULTA OBRIGATÓRIO
#--------------------------------------------#
Quando("não preencher os parametros para consulta de porte de arma de fogo") do
  puts "Realizando a pesquisa sem passar os parâmetros"
  @porte_arma.btn_pesquisar_porte.click
end

Entao("deve-se visualizar a mensagem de campo obrigatorio") do
  puts "Visualizando mensagem de campo obrigatório"
  expect(@porte_arma).to have_text("O campo Número do Porte é obrigatório.")
end
