#----------------------------------------#
#INCLUSÃO ARMA DE FOGO POR REVENDEDOR
#----------------------------------------#
Quando("solicitar a inclusão de uma arma de fogo por revendedor") do
  @incluir_arma = IncluirArmaPage.new
  puts "Realizando login e acessando menu"
  @incluir_arma.acessar_form_revendedor
end

Quando("preencher o CNPJ do revendedor") do
  puts "Preenchendo CNPJ"
  @incluir_arma.preencher_cnpj_revendedor
end

#VERIFICAÇÃO DE CAMPO CNPJ REVENDEDOR OBRIGATORIO
Quando("não preencher o CNPJ do revendedor") do
  puts "Clicando no botão sem preencher o CNPJ"
  @incluir_arma.btn_pesquisar.click
end

Entao("deve-se visualizar a mensagem de CNPJ obrigatório") do
  puts "Verificando mensagem de CNPJ obrigatório"
  expect(@incluir_arma).to have_text("O campo CNPJ é obrigatório.")
end

#VERIFICAÇÃO DE CAMPO CNPJ REVENDEDOR INVÁLIDO
Quando("preencher o CNPJ do revendedor inválido") do
  puts "Preenchendo CNPJ"
  @incluir_arma.cnpj_input.click.set("01010101010101")
  @incluir_arma.btn_pesquisar.click
end

Entao("deve-se visualizar a mensagem de CNPJ inválido") do
  puts "Verificando mensagem de CNPJ inválido"
  expect(@incluir_arma).to have_text("O campo CNPJ é inválido.")
end

#VERIFICAÇÃO DE CAMPO 'NÚMERO DE SÉRIE' OBRIGATÓRIO
Quando("não preencher o numero de série") do
  puts "Preenchendo formulário e deixando número de série em branco"
  @incluir_arma.seleciona_marca_arma("TAURUS (FORJAS TAURUS S.A.)")
  @incluir_arma.seleciona_calibre_arma(".380")
  @incluir_arma.seleciona_especie_arma("Pistola")
  @incluir_arma.seleciona_modelo_arma("(TAU000000034069) HAMMER")
  @incluir_arma.aguardar_carregamento
  @incluir_arma.btn_salvar.click
end

Entao("deve-se visualizar a mensagem de número de série obrigatório") do
  puts "Verificando mensagem de número de série obrigatório"
  expect(@incluir_arma).to have_text("O campo Numero de Serie é obrigatório.")
end

#VERIFICAÇÃO DE CAMPO 'NÚMERO DE SÉRIE' INVÁLIDO
Quando("preencher o numero de série inválido") do
  puts "Preenchendo número de série inválido"
  @incluir_arma.numero_serie_input.click.set ('!@#$%*')
  @incluir_arma.btn_adicionar_nr_serie.click
end

Entao("deve-se visualizar a mensagem de número de série invalido") do
  puts "Verificando mensagem de número de série inválido"
  expect(@incluir_arma).to have_text("Só é permitido a inserção de números e letras no campo Número de Série.")
end

#VERIFICAÇÃO DE CAMPOS OBRIGATÓRIOS NO FORMULÁRIO |MARCA|ESPÉCIE|CALIBRE|
Quando("preencher o numero de série válido") do
  puts "Preenchendo numero de serie válido"
  @incluir_arma.preencher_numero_serie
  @incluir_arma.btn_adicionar_nr_serie.click
  @incluir_arma.aguardar_carregamento
end

Quando("clicar para salvar") do
  puts "Salvando formulário"
  @incluir_arma.btn_salvar.click
end

Entao("deve-se visualizar a mensagem de campos obrigatórios") do
  puts "Verificando mensagens de campos obrigatórios"
  @incluir_arma.validar_campos_obrigatórios_MEC
end

#VERIFICAÇÃO DO CAMPO MODELO OBRIGATÓRIO
Quando("preencher os dados da arma") do
  puts "Preenchendo dados da arma e deixando modelo em branco"
  @incluir_arma.preencher_dados_arma_modelo_branco
end

Entao("deve-se visualizar a mensagem de campo modelo obrigatorio") do
  puts "Verificando mensagens de campo obrigatório"
  page.execute_script("window.scrollTo(0,-100000)")
  page.assert_text("O campo Modelo é obrigatório.")
end

#----------------------------------------#
#INCLUSÃO ARMA DE FOGO POR PROPRIETÁRIO PF
#----------------------------------------#
Quando("solicitar a inclusão de uma arma de fogo por proprietario PF") do
  @incluir_arma = IncluirArmaPage.new
  puts "Realizando login e acessando menu"
  @incluir_arma.acessar_form_proprietario
  @incluir_arma.escolha_tipo_pessoa("Pessoa Física")
end

Quando("preencher o CPF do prprietario") do
  puts "Preenchendo CPF do proprietario"
  @incluir_arma.preencher_cpf_proprietario
end

#VERIFICAÇÃO DE CAMPO CPF PROPRIETÁRIO OBRIGATORIO
Quando("não preencher o CPF do proprietario") do
  puts "Clicando no botão de pesquisar sem preencher o CPF do proprietário"
  @incluir_arma.btn_pesquisar.click
end

Entao("deve-se visualizar a mensagem de CPF obrigatório") do
  puts "Verificando mensagens de campo obrigatório"
  expect(@incluir_arma).to have_text("O campo CPF é obrigatório.")
end

#VERIFICAÇÃO DE CAMPO CPF PROPRIETÁRIO INVÁLIDO
Quando("preencher o CPF do proprietário inválido") do
  puts "Preenchendo CPF inválido e clicando no botão pesquisar"
  @incluir_arma.cpf_input.click.set("1234")
  @incluir_arma.btn_pesquisar.click
end

Entao("deve-se visualizar a mensagem de CPF inválido") do
  puts "Verificando mensagens de campo inválido"
  expect(@incluir_arma).to have_text("O campo CPF é inválido.")
end

#-----------------------------------------#
#INCLUSÃO ARMA DE FOGO POR PROPRIETÁRIO PJ
#-----------------------------------------#

Quando("solicitar a inclusão de uma arma de fogo por proprietario PJ") do
  @incluir_arma = IncluirArmaPage.new
  puts "Realizando login e acessando formulario"
  @incluir_arma.acessar_form_proprietario
  @incluir_arma.escolha_tipo_pessoa("Pessoa Jurídica")
end

Quando("preencher o CNPJ do prprietario") do
  puts "Preenchendo CNPJ do proprietario"
  @incluir_arma.preencher_cnpj_proprietario
end

#VERIFICAÇÃO DE CAMPO CNPJ PROPRIETÁRIO OBRIGATORIO
Quando("não preencher o CNPJ do proprietario") do
  puts "Clicando no botão de pesquisar sem preencher o CNPJ do proprietário"
  @incluir_arma.btn_pesquisar.click
end

#VERIFICAÇÃO DE CAMPO CNPJ PROPRIETÁRIO INVÁLIDO
Quando("preencher o CNPJ do proprietário inválido") do
  puts "Preenchendo CNPJ inválido e clicando no botão pesquisar"
  @incluir_arma.cnpj_input.click.set("1234")
  @incluir_arma.btn_pesquisar.click
end

#------------------------------------#
#INCLUSÃO ARMA DE FOGO POR OCORRENCIA
#------------------------------------#
Quando("solicitar a inclusão de uma arma de fogo por ocorrencia") do
  @incluir_arma = IncluirArmaPage.new
  puts "Realizando login e acessando formulario"
  @incluir_arma.acessar_form_ocorrencia
end

Quando("preencher o formulário para adicionar arma") do
  puts "Preenchendo formulario para adcionar uma arma por ocorrencia"
  @incluir_arma.preencher_numero_serie
  @incluir_arma.btn_adicionar_nr_serie.click
  @incluir_arma.aguardar_carregamento
  @incluir_arma.seleciona_marca_arma("TAURUS (FORJAS TAURUS S.A.)")
  @incluir_arma.seleciona_calibre_arma(".380")
  @incluir_arma.seleciona_especie_arma("Pistola")
  @incluir_arma.aguardar_carregamento
  @incluir_arma.seleciona_modelo_arma("(TAU000000034069) HAMMER")
  @incluir_arma.aguardar_carregamento
end

Quando("adicionar a arma de fogo") do
  @incluir_arma.btn_adicionar_arma.click
  @incluir_arma.aguardar_carregamento
  @incluir_arma.btn_associar_ocorrencia.click
end

Quando("preencher o formulario de ocorrencia") do
  puts "Preenchendo formulario da ocorrencia"
  @incluir_arma.seleciona_tipo_ocorrencia("Furto de Arma de Fogo")
  @incluir_arma.aguardar_carregamento
  @incluir_arma.seleciona_uf_ocorrencia("DF")
  @incluir_arma.seleciona_instituicao_ocorrencia("Polícia Federal")
  @incluir_arma.data_ocorrencia_input.click.set("17072919")
  @incluir_arma.preencher_numero_ocorrencia
  @incluir_arma.seleciona_municipio_ocorrencia("Brasília")
  @incluir_arma.unidade_ocorrencia_input.click.set("NUCART/DELEX/DPF/STS/SP")
  @incluir_arma.descricao_ocorrencia_areatext.click.set("Testanto inclusão de arma de fogo por ocorrência.")
  @incluir_arma.btn_salvar_ocorrencia.click
end

Entao("deve-se visualizar a mensagem de operacao efetuada com sucesso") do
  @incluir_arma.aguardar_carregamento
  puts "Verificando mensagem 'Operação efetuada com sucesso.'"
  expect(@incluir_arma).to have_text("Operação efetuada com sucesso.")
end

#VERIFICAÇÃO DE CAMPOS OBRIGATÓRIOS NO FORMULÁRIO PARA ADICIONAR UMA ARMA POR OCORRÊNCIA
Quando("clicar em associar ocorrencia sem preencher o formulario") do
  puts "Clicando no botão para associar ocorrência sem preencher o formulário"
  @incluir_arma.btn_associar_ocorrencia.click
end

Entao("deve visualizar as mensagens de campos obrigatórios") do
  puts "Verificando mensagens de campos obrigatórios"
  @incluir_arma.validar_campos_obrigatórios_MECD
end

#VERIFICAÇÃO DE CAMPOS OBRIGATÓRIOS PARA ADICIONAR UMA OCORRENCIA
Quando("clicar em salvar sem preencher o formulario de ocorrencia") do
  puts "Clicando no botão para salvar sem preencher o formulário de ocorrencia"
  @incluir_arma.btn_salvar_ocorrencia.click
end

Entao("deve-se visualizar as mensagens de campos obrigatórios no formulario de ocorrencia") do
  puts "Verificando mensagens de campos obrigatórios"
  @incluir_arma.validar_campos_obrigatórios_ocorrencia
end
#------------------------------------------------#
#ACESSO AO FORMULÁRIO DE INCLUSÃO DE ARMA DE FOGO
#------------------------------------------------#
Quando("clicar no botão para incluir arma") do
  @incluir_arma = IncluirArmaPage.new
  @incluir_arma.clicar_botao_incluir_arma
end

Quando("preencher o formulário") do
  puts "Preenchendo formulario da inclusão de arma"
  @incluir_arma.preencher_numero_serie
  @incluir_arma.btn_adicionar_nr_serie.click
  @incluir_arma.armazena_nr_serie_arma("nr_serie_arma.txt")
  @incluir_arma.aguardar_carregamento
  @incluir_arma.seleciona_marca_arma("TAURUS (FORJAS TAURUS S.A.)")
  @incluir_arma.seleciona_calibre_arma(".380")
  @incluir_arma.seleciona_especie_arma("Pistola")
  @incluir_arma.aguardar_carregamento
  @incluir_arma.seleciona_modelo_arma("(TAU000000034069) HAMMER")
  @incluir_arma.aguardar_carregamento
  @incluir_arma.btn_salvar.click
end

Entao("deve-se visualizar a mensagem de inclusão efetuada com sucesso") do
  @incluir_arma.aguardar_carregamento
  puts "Verificando mensagem de 'Inclusão efetuada com sucesso!'"
  expect(@incluir_arma).to have_text("Inclusão efetuada com sucesso!")
end

#---------------------------------#
#CONSULTAR E DETALHAR ARMA DE FOGO
#---------------------------------#

Quando("solicitar a pesquisa de arma de fogo") do
  @incluir_arma = IncluirArmaPage.new
  puts "Realizando login e acessando menu"
  @incluir_arma.acessar_form_consulta
end

Quando("preencher os parametros para consulta") do
  puts "Pesquisando arma de fogo"
  @incluir_arma.preencher_parametros_para_consulta_arma
end

Quando("preencher os parametros para uma consulta") do
  puts "Pesquisando arma de fogo"
  @incluir_arma = IncluirArmaPage.new
  @incluir_arma.preencher_parametros_para_consulta_arma_editada
end

Quando("clicar no botão para detalhar arma") do
  puts "Acessando detalhamento da arma de fogo"
  @incluir_arma.btn_detalhar_registro.click
end

Entao("deve-se visualizar o detalhamento de arma de fogo") do
  @incluir_arma.aguardar_carregamento
  puts "Verificando detalhamento de arma de fogo"
  expect(@incluir_arma).to have_text("Detalhamento de Arma de Fogo")
end

#VERIFICAÇÃO DE CAMPOS OBRIGATÓRIOS PARA PESQUISAR UMA ARMA DE FOGO
Quando("não preencher os parametros para consulta") do
  puts "Clicando no botão para pesquisar sem inserir os parâmetros"
  @incluir_arma.pesquisar_btn.click
end

Entao("deve-se visualizar a mensagem de campos obrigatórios para realizar consulta") do
  puts "Verificando mensagens de campos obrigatórios"
  expect(@incluir_arma).to have_text("Pelo menos o Nº de serie, Nº do CAD Sinarm ou Nº de Registro devem ser preenchido.")
end

#VERIFICAÇÃO DE MENSAGEM DE REGISTROS NÃO ENCONTRADOS
Quando("preencher parametros não cadastrados no sistema para consulta") do
  puts "Preenchendo parâmetros nao cadastrados no sistema"
  @incluir_arma.pesquisar_nr_serie_input.click.set("000000000000000")
  @incluir_arma.pesquisar_nr_cad_sinarm_input.click.set("0000/000000000-00")
  @incluir_arma.pesquisar_nr_registro_input.click.set("000000000")
  @incluir_arma.pesquisa_seleciona_especie("Pistola")
  @incluir_arma.pesquisa_seleciona_marca("TAURUS (FORJAS TAURUS S.A.)")
  @incluir_arma.pesquisa_seleciona_calibre(".380")
  @incluir_arma.aguardar_carregamento
  @incluir_arma.pesquisar_btn.click
end

Entao("deve-se visualizar a mensagem de registros não encontrados") do
  puts "Verificando mensagem de registro não encontrado"
  expect(@incluir_arma).to have_text("Não foram encontrados registros que atendam aos parâmetros de pesquisa informados.")
end

#---------------------------------#
#ALTERAR ARMA DE FOGO
#---------------------------------#

Quando("clicar no botão para alterar arma") do
  @alterar_arma = IncluirArmaPage.new
  puts "Acessando formulario para alteração de arma de fogo"
  @alterar_arma.btn_alterar_registro.click
end

Quando("realizar as alterações da arma de fogo") do
  puts "Realizando alterações da arma de fogo"
  @alterar_arma.alterar_numero_serie
  @alterar_arma.alterar_marca_arma("TAURUS (FORJAS TAURUS S.A.)")
  @alterar_arma.alterar_calibre_arma(".380")
  @alterar_arma.alterar_especie_arma("Pistola")
  @alterar_arma.alterar_modelo_arma("(TAU000000034069) HAMMER")
  @alterar_arma.alterar_btn_salvar.click
end

Quando("preencher o motivo da alteração") do
  @alterar_arma.aguardar_carregamento
  puts "Preenchendo motivo da alteração"
  @alterar_arma.motivo_areatext.click.set("Testando alteração de arma de fogo")
  @alterar_arma.aguardar_carregamento
  @alterar_arma.btn_salvar_alteracao.click
end

Entao("deve visualizar a mensagem de operacao efetuada com sucesso") do
  @alterar_arma.aguardar_carregamento
  puts "Verificando mensagem 'Operação efetuada com sucesso.'"
  @alterar_arma.armazena_nr_serie_alterado("nr_serie_arma_editar.txt")
  expect(@alterar_arma).to have_text("Operação efetuada com sucesso.")
end

#VALIDAR CAMPOS DO FORMULÁRIO DE ALTERAÇÃO DE ARMA DE FOGO
Quando("deixar campos obrigatórios em branco") do
  puts "Setando campos para ficarem nulos"
  @alterar_arma.alterar_modelo_arma("--Selecione--")
  @alterar_arma.alterar_btn_salvar.click
end

Entao("deve-se visualizar a mensagem de registros obrigatorios") do
  puts "Verificando mensagens de campos obrigatórios"
  expect(@incluir_arma).to have_text("O campo Modelo é obrigatório.")
end

#VALIDAR CAMPO DE MOTIVO DA ALTERAÇÃO DA ARMA DE FOGO

Quando("não preencher o motivo da alteração") do
  puts "Motivo da alteração em branco"
  @alterar_arma.btn_salvar_alteracao.click
end

Entao("deve-se visualizar a mensagem de motivo obrigatorio") do
  puts "Verificando mensagem de campo obrigatório"
  expect(@incluir_arma).to have_text("O campo Motivo é obrigatório.")
end
