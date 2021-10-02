# ******** Cenários de requerimento de registro para pessoa física ********* #

# @requerimento_registro_PF_sem_autorizacao
# Requerimento de registro de arma de fogo de pessoa física sem autorizacao
Quando("solicitar o registro de arma de fogo como pessoa fisica sem autorizacao") do
  @requerimento_registro = RequerimentoRegistroPage.new
  @requerimento_registro.obter_nr_serie_estoque("PF")
  @requerimento_registro.load
end

Quando("preencher o formulário de registro de arma de fogo de pessoa fisica sem autorizacao") do
  #Tipo de requerimento e Categoria
  @requerimento_registro.escolha_tipo_pessoa("Pessoa Física")
  @requerimento_registro.seleciona_categoria("Cidadão")

  ##### Dados Pessoais #####
  @requerimento_registro.cpf_input.click.set("89905839186")
  @requerimento_registro.escolha_tipo_especie_autorizacao("Registro sem autorização prévia")
  @requerimento_registro.sem_autorizacao_check.checked?
  @requerimento_registro.informar_captcha
  @requerimento_registro.btn_pesquisar.click

  ##### Dados Pessoais #####
  @requerimento_registro.nome_input.click.set("Paulo Cauã Nunes")
  @requerimento_registro.nome_pai_input.click.set("Matheus Augusto Filipe Nunes")
  @requerimento_registro.nome_mae_input.click.set("Raquel Aline Silvana")
  @requerimento_registro.data_nascimento_input.click.set("02021989")
  @requerimento_registro.seleciona_sexo("Feminino")
  @requerimento_registro.seleciona_pais("Brasil")
  @requerimento_registro.seleciona_uf_nascimento("DF")
  @requerimento_registro.seleciona_municipio_nascimento("Brasília")
  @requerimento_registro.rg_input.click.set("159086255")
  @requerimento_registro.data_expedicao_input.click.set("10102010")
  @requerimento_registro.orgao_expedicao_input.click.set("SSP")
  @requerimento_registro.seleciona_uf_expedicao("DF")
  @requerimento_registro.seleciona_estado_civil("Solteiro")
  @requerimento_registro.titulo_input.click.set("376814262089")
  @requerimento_registro.seleciona_profissao("ADMINISTRADOR")
  @requerimento_registro.email_input.click.set("b1101747@urhen.com")

  ##### Dados Residenciais #####
  @requerimento_registro.cep_input.click.set("72302409")
  @requerimento_registro.seleciona_tipo_endereco_pf("Residencial")
  @requerimento_registro.logradouro_input.click.set("QR 112")
  @requerimento_registro.numero_endereco_input.click.set("822")
  @requerimento_registro.bairro_input.click.set("Conjunto 8")
  @requerimento_registro.seleciona_uf_endereco("DF")
  @requerimento_registro.seleciona_municipio_endereco("Brasília")
  @requerimento_registro.ddd_celular_input.click.set("61")
  @requerimento_registro.celular_input.click.set("61995746286")
# binding.pry
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  ##### Dados da Arma #####
  @requerimento_registro.informar_nr_serie("nr_serie_PF.txt")
  @requerimento_registro.seleciona_especie_arma("Pistola")
  @requerimento_registro.seleciona_marca_arma("TAURUS (FORJAS TAURUS S.A.)")
  @requerimento_registro.seleciona_calibre_arma(".380")
  #@requerimento_registro.modelo_arma_input.click.set('Modelo 01')
  @requerimento_registro.nota_fiscal_input.click.set("987654321")
  @requerimento_registro.data_nota_fiscal_input.click.set("01012018")
  @requerimento_registro.cnpj_revendedor_input.click.set("92781335000102")
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  #### Declaração de Necessidade PF
  @requerimento_registro.efetiva_necessidade_check.click
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  #### Dados Termo de Responsabilidade PF
  @requerimento_registro.veracidade_informacao_input.click
  @requerimento_registro.seleciona_uf_atendimento("DF")
  @requerimento_registro.seleciona_municipio_atendimento("Brasília")
  @requerimento_registro.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_registro.informar_captcha
  @requerimento_registro.btn_emitir.click
  @requerimento_registro.aguardar_carregamento
end

Entao("deve visualizar a mensagem de sucesso de registro de arma de fogo para pessoa fisica sem autorizacao") do
  expect(@requerimento_registro).to have_text("Solicitação realizada.")
  expect(@requerimento_registro).to have_text("Requerimento de Registro de Arma de Fogo")
  expect(@requerimento_registro).to have_text("CPF")
  @requerimento_registro.armazena_numero_txt("requerimento_registro_PF_sem_autorizacao.txt")
end

# @requerimento_registro_PF_com_autorizacao
# Requerimento de registro de arma de fogo de pessoa física com autorizacao
Quando("solicitar o registro de arma de fogo como pessoa fisica com autorizacao") do
  @requerimento_registro = RequerimentoRegistroPage.new
  @requerimento_registro.obter_nr_serie_estoque("PF")
  @requerimento_registro.load
end

#Identificacao com codigo de autorizacao
Quando("preencher o formulário de registro de arma de fogo de pessoa fisica com autorizacao") do

  #Tipo de requerimento e Categoria
  @requerimento_registro.escolha_tipo_pessoa("Pessoa Física")
  @requerimento_registro.seleciona_categoria("Cidadão")

  ##### Dados Pessoais #####
  @requerimento_registro.cpf_input.click.set("89905839186")
  @requerimento_registro.escolha_tipo_especie_autorizacao("Autorização de Aquisição de Arma de Fogo emitida pela Polícia Federal/SINARM")
  @requerimento_registro.informar_codigo_autorizacao("cod_aprovacao_aquisicao_PF.txt")
  @requerimento_registro.informar_captcha
  @requerimento_registro.btn_pesquisar.click
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  ##### Dados da Arma #####
  @requerimento_registro.informar_nr_serie("nr_serie_PF.txt")
  @requerimento_registro.seleciona_especie_arma("Pistola")
  @requerimento_registro.seleciona_marca_arma("TAURUS (FORJAS TAURUS S.A.)")
  @requerimento_registro.seleciona_calibre_arma(".380")
  #@requerimento_registro.modelo_arma_input.click.set('Modelo 01')
  @requerimento_registro.nota_fiscal_input.click.set("987654321")
  @requerimento_registro.data_nota_fiscal_input.click.set("01012018")
  @requerimento_registro.cnpj_revendedor_input.click.set("92781335000102")
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  #### Declaração de Necessidade PF
  @requerimento_registro.efetiva_necessidade_check.click
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  #### Dados Termo de Responsabilidade PF
  @requerimento_registro.veracidade_informacao_input.click
  @requerimento_registro.seleciona_uf_atendimento("DF")
  @requerimento_registro.seleciona_municipio_atendimento("Brasília")
  @requerimento_registro.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_registro.informar_captcha
  @requerimento_registro.btn_emitir.click
  @requerimento_registro.aguardar_carregamento
end

Entao("deve visualizar a mensagem de sucesso de registro de arma de fogo para pessoa fisica com autorizacao") do
  expect(@requerimento_registro).to have_text("Solicitação realizada.")
  expect(@requerimento_registro).to have_text("Requerimento de Registro de Arma de Fogo")
  expect(@requerimento_registro).to have_text("CPF")
  @requerimento_registro.armazena_numero_txt("requerimento_registro_PF_com_autorizacao.txt")
end

# ******** Cenários de requerimento de registro para pessoa jurídica ********* #

# @requerer_e_manifestar_registro_PJ_sem_autorizacao
# @requerimento_registro_PJ_sem_autorizacao
# Requerimento de registro de arma de fogo como pessoa jurídica sem autorizacao
# Este cenário abrange as categorias de Orgão Publico com ou sem taxa,
# devendo alterar a massa de teste
Quando("solicitar o registro de arma de fogo como pessoa juridica sem autorizacao") do
  @requerimento_registro = RequerimentoRegistroPage.new
  @requerimento_registro.obter_nr_serie_estoque("PJ")
  @requerimento_registro.load
end

Quando("preencher o formulário de registro de arma de fogo de pessoa juridica sem autorizacao") do
  #Tipo de requerimento e Categoria
  @requerimento_registro.escolha_tipo_pessoa("Pessoa Jurídica")
  @requerimento_registro.seleciona_categoria_pj("Órgão público com taxa")
  @requerimento_registro.cnpj_input.click.set("00394494007220")

  #Identificacao sem codigo de autorizacao(órgao publico com e sem taxa)
  @requerimento_registro.informar_captcha
  @requerimento_registro.btn_pesquisar.click

  ##### Dados Pessoais #####
  @requerimento_registro.razao_social_input.click.set("DEPARTAMENTO PENITENCIARIO NACIONAL  DEPEN")
  @requerimento_registro.cep_juridica_input.click.set("70064900")
  @requerimento_registro.seleciona_tipo_endereco_pj("Comercial")
  @requerimento_registro.logradouro_juridica_input.click.set("ESPL MINISTERIOS ANEXO II 6 ANDAR")
  @requerimento_registro.numero_juridica_input.click.set("01")
  @requerimento_registro.bairro_juridica_input.click.set("PLANO PILOTO")
  @requerimento_registro.seleciona_uf_pj("DF")
  @requerimento_registro.seleciona_municipio_pj("Brasília")
  @requerimento_registro.ddd_telefone_juridica_input.click.set("61")
  @requerimento_registro.telefone_juridica_input.click.set("34299979")
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  ##### Dados da Arma #####
  @requerimento_registro.informar_nr_serie("nr_serie_PJ.txt")
  @requerimento_registro.seleciona_especie_arma_pj("Pistola")
  @requerimento_registro.seleciona_marca_arma_pj("TAURUS (FORJAS TAURUS S.A.)")
  @requerimento_registro.seleciona_calibre_arma_pj(".380")

  #@requerimento_registro.modelo_arma_pj_input.click.set('Modelo 01')
  @requerimento_registro.nota_fiscal_pj_input.click.set("987654321")
  @requerimento_registro.data_nota_fiscal_pj_input.click.set("01012018")
  @requerimento_registro.cnpj_revendedor_pj_input.click.set("92781335000102")
  @requerimento_registro.btn_adicionar.click
  @requerimento_registro.aguardar_carregamento

  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  #### Declaração de Necessidade PJ
  @requerimento_registro.efetiva_necessidade_pj_check.click
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  #### Dados Termo de Responsabilidade PJ
  @requerimento_registro.veracidade_informacao_input.click
  @requerimento_registro.seleciona_uf_atendimento("DF")
  @requerimento_registro.seleciona_municipio_atendimento("Brasília")
  @requerimento_registro.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_registro.informar_captcha
  @requerimento_registro.btn_emitir.click
  @requerimento_registro.aguardar_carregamento
end

Entao("deve visualizar a mensagem de sucesso de registro de arma de fogo para pessoa juridica sem autorizacao") do
  expect(@requerimento_registro).to have_text("Solicitação realizada.")
  expect(@requerimento_registro).to have_text("Requerimento de Registro de Arma de Fogo")
  expect(@requerimento_registro).to have_text("CNPJ")
  @requerimento_registro.armazena_numero_txt("requerimento_registro_PJ_sem_autorizacao.txt")
end

# @requerer_e_manifestar_registro_PJ_com_autorizacao
# @requerimento_registro_PJ_com_autorizacao
# Requerimento de registro de arma de fogo como pessoa jurídica com autorizacao
# Este cenário abrange as categorias de Empresa Comercial, Fabricante/Importador,
# Revendedor e "Outras" devendo alterar a massa de teste
Quando("solicitar o registro de arma de fogo como pessoa juridica com autorizacao") do
  @requerimento_registro = RequerimentoRegistroPage.new
  @requerimento_registro.obter_nr_serie_estoque("PJ")
  @requerimento_registro.load
end

Quando("preencher o formulário de registro de arma de fogo de pessoa juridica com autorizacao") do
  #Tipo de requerimento e Categoria
  @requerimento_registro.escolha_tipo_pessoa("Pessoa Jurídica")
  @requerimento_registro.seleciona_categoria_pj("Empresa Comercial")
  @requerimento_registro.cnpj_input.click.set("00730680000107")
  @requerimento_registro.informar_codigo_autorizacao("cod_aprovacao_aquisicao_PJ.txt")
  @requerimento_registro.informar_captcha
  @requerimento_registro.btn_pesquisar.click

  ##### Dados Pessoais PJ #####
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  ##### Dados da Arma PJ #####
  @requerimento_registro.informar_nr_serie("nr_serie_PJ.txt")
  @requerimento_registro.seleciona_marca_arma("TAURUS (FORJAS TAURUS S.A.)")
  @requerimento_registro.modelo_arma_input.click.set("Modelo 01")
  @requerimento_registro.nota_fiscal_input.click.set("987654321")
  @requerimento_registro.data_nota_fiscal_input.click.set("01012018")
  @requerimento_registro.cnpj_revendedor_input.click.set("92781335000102")
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  #### Declaração de Necessidade PJ
  @requerimento_registro.efetiva_necessidade_check.click
  @requerimento_registro.btn_proxima.click
  @requerimento_registro.aguardar_carregamento

  #### Dados Termo de Responsabilidade PJ
  @requerimento_registro.veracidade_informacao_input.click
  @requerimento_registro.seleciona_uf_atendimento("DF")
  @requerimento_registro.seleciona_municipio_atendimento("Brasília")
  @requerimento_registro.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_registro.informar_captcha

  @requerimento_registro.btn_emitir.click
  @requerimento_registro.aguardar_carregamento
end

Entao("deve visualizar a mensagem de sucesso de registro de arma de fogo para pessoa juridica com autorizacao") do
  expect(@requerimento_registro).to have_text("Solicitação realizada.")
  expect(@requerimento_registro).to have_text("Requerimento de Registro de Arma de Fogo")
  expect(@requerimento_registro).to have_text("CNPJ")
  @requerimento_registro.armazena_numero_txt("requerimento_registro_PJ_com_autorizacao.txt")
end
