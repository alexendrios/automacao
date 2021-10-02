# @requerimento_aquisicao_PF
# Requerimento de aquisição de arma de fogo como pessoa física
Quando("solicitar a aquisicao de arma de fogo como pessoa fisica") do
  @requerimento_aquisicao = RequerimentoAquisicaoPage.new
  @requerimento_aquisicao.load
end

Quando("preencher o formulário de aquisicao de pessoa fisica") do
  #Tipo de requerimento e Categoria
  @requerimento_aquisicao.escolha_tipo_pessoa("Pessoa Física")
  @requerimento_aquisicao.seleciona_categoria_pf("Cidadão")
  @requerimento_aquisicao.preencher_aba_identificacao
  @requerimento_aquisicao.preencher_aba_dados_arma
  @requerimento_aquisicao.preencher_aba_declaracao_necessidade
  @requerimento_aquisicao.preencher_aba_termo_responsabilidade

  @requerimento_aquisicao.emitir_requerimento
end

Entao("deve visualizar a mensagem de sucesso de aquisicao para pessoa fisica") do
  expect(@requerimento_aquisicao).to have_text("Solicitação realizada.")
  expect(@requerimento_aquisicao).to have_text("REQUERIMENTO DE AQUISIÇÃO DE ARMA DE FOGO")
  expect(@requerimento_aquisicao).to have_text("CPF")
  @requerimento_aquisicao.armazena_numero_txt("requerimento_aquisicao_PF.txt")
end

# @requerimento_aquisicao_PJ
# Requerimento de aquisição de arma de fogo como pessoa juridica
Quando("solicitar a aquisicao de arma de fogo como pessoa juridica") do
  @requerimento_aquisicao = RequerimentoAquisicaoPage.new
  @requerimento_aquisicao.load
end

Quando("preencher o formulário de aquisicao de pessoa juridica") do
  ##Tipo de requerimento e Categoria
  @requerimento_aquisicao.escolha_tipo_pessoa("Pessoa Jurídica")
  @requerimento_aquisicao.seleciona_categoria_pj("Empresa Comercial")

  ##### Dados Pessoa Juridica #####
  @requerimento_aquisicao.cnpj_juridica_input.click.set("00730680000107")
  @requerimento_aquisicao.razao_social_input.click.set("Stefanini")
  @requerimento_aquisicao.cep_juridica_input.click.set("70327900")
  @requerimento_aquisicao.seleciona_tipo_endereco_pj("Comercial")
  @requerimento_aquisicao.logradouro_juridica_input.click.set("Setor Comercial Norte")
  @requerimento_aquisicao.numero_juridica_input.click.set("01")
  @requerimento_aquisicao.bairro_juridica_input.click.set("Asa Norte")
  @requerimento_aquisicao.seleciona_uf_pj("DF")
  @requerimento_aquisicao.seleciona_municipio_pj("Brasília")
  @requerimento_aquisicao.ddd_telefone_juridica_input.click.set("61")
  @requerimento_aquisicao.telefone_juridica_input.click.set("33330005")
  @requerimento_aquisicao.email_juridica_input.click.set("b606779@urhen.com")
  @requerimento_aquisicao.btn_proximo.click

  ##### Dados da Arma #####
  @requerimento_aquisicao.seleciona_especie("Pistola")
  @requerimento_aquisicao.seleciona_calibre(".380")
  @requerimento_aquisicao.btn_proximo.click
  @requerimento_aquisicao.necessidade_juridica_check.click
  @requerimento_aquisicao.btn_proximo.click

  #### Dados Termo de Responsabilidade PF
  @requerimento_aquisicao.veracidade_check.click
  @requerimento_aquisicao.seleciona_uf_atendimento("DF")
  @requerimento_aquisicao.seleciona_municipio_atendimento("Brasília")
  @requerimento_aquisicao.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_aquisicao.informar_captcha
  @requerimento_aquisicao.btn_emitir.click
end

Entao("deve visualizar a mensagem de sucesso de aquisicao para pessoa juridica") do
  expect(@requerimento_aquisicao).to have_text("Solicitação realizada.")
  expect(@requerimento_aquisicao).to have_text("REQUERIMENTO DE AQUISIÇÃO DE ARMA DE FOGO")
  expect(@requerimento_aquisicao).to have_text("CNPJ")
  @requerimento_aquisicao.armazena_numero_txt("requerimento_aquisicao_PJ.txt")
end

# @campos_obrigatorios_aquisicao
# Esquema do Cenário: Verificar os campos obrigatórios do requerimento de aquisicao
Quando("solicitar a aquisicao de arma de fogo") do
  @requerimento_aquisicao = RequerimentoAquisicaoPage.new
  @requerimento_aquisicao.load
end

Quando("não preencher os campos obrigatorios da aba Identificacao para Cidadao e Cacador") do
  puts "Validando campos obrigatorios da aba Identificacao para Cidadao e Cacador"

  # @requerimento_aquisicao.receber_atulizacoes_check.click
  @requerimento_aquisicao.btn_proximo.click

  @msgs_campos_obrigatorios = ["O campo CPF é obrigatório.", "O campo Nome da Mãe é obrigatório.",
                               "O campo Data de Nascimento é obrigatório.", "O campo Sexo é obrigatório.",
                               "O campo País de Nascimento é obrigatório.", "O campo Número do RG é obrigatório.",
                               "O campo Órgão Exp. RG é obrigatório.", "O campo UF Exp. RG é obrigatório.",
                               "O campo Estado Civil é obrigatório.", "O campo Profissão é obrigatório.",
                               "O campo E-mail é obrigatório."]
end

Quando("não preencher os campos obrigatorios da aba Identificacao para Servidor Publico") do
  puts "Validando campos obrigatorios da aba Identificacao para Servidor Publico"

  @requerimento_aquisicao.seleciona_categoria_pf("Servidor Público(Porte por prerrogativa de função)")
  # @requerimento_aquisicao.receber_atulizacoes_check.click
  sleep(1)
  @requerimento_aquisicao.btn_proximo.click

  @msgs_campos_obrigatorios = ["O campo CPF é obrigatório.", "O campo Nome da Mãe é obrigatório.",
                               "O campo Data de Nascimento é obrigatório.", "O campo Sexo é obrigatório.",
                               "O campo País de Nascimento é obrigatório.", "O campo Número do RG é obrigatório.",
                               "O campo Órgão Exp. RG é obrigatório.", "O campo UF Exp. RG é obrigatório.",
                               "O campo Estado Civil é obrigatório.", "O campo Profissão é obrigatório.",
                               "O campo E-mail é obrigatório.", "O campo Órgão/Ocupação é obrigatório.",
                               "O campo CNPJ do Órgão é obrigatório.", "O campo Nome do Órgão é obrigatório."]
end

Quando("não preencher os campos obrigatorios da aba Identificacao de Pessoa Juridica") do
  puts "Validando campos obrigatorios da aba Identificacao de Pessoa Juridica"

  @requerimento_aquisicao.escolha_tipo_pessoa("Pessoa Jurídica")
  # @requerimento_aquisicao.receber_atulizacoes_check.click
  @requerimento_aquisicao.btn_proximo.click

  @msgs_campos_obrigatorios = ["O campo CNPJ é obrigatório.", "O campo Razão Social é obrigatório.",
                               "O campo CEP é obrigatório.", "O campo Tipo é obrigatório.",
                               "O campo Logradouro é obrigatório.", "O campo Número é obrigatório.",
                               "O campo Bairro é obrigatório.", "O campo UF é obrigatório.",
                               "O campo Município é obrigatório.", "O campo DDD é obrigatório.",
                               "O campo Telefone Comercial é obrigatório.", "O campo E-mail é obrigatório."]
end

Quando("não preencher os campos obrigatorios da aba Dados da arma") do
  @requerimento_aquisicao.preencher_aba_identificacao

  puts "Validando campos obrigatorios da aba Dados da arma"
  @requerimento_aquisicao.btn_proximo.click

  @msgs_campos_obrigatorios = ["O campo Espécie é obrigatório.", "O campo Calibre é obrigatório."]
end

Quando("não preencher os campos obrigatorios da aba Declaracao de necessidade") do
  @requerimento_aquisicao.preencher_aba_identificacao
  @requerimento_aquisicao.preencher_aba_dados_arma

  puts "Validando campos obrigatorios da aba Declaracao de necessidade"
  @requerimento_aquisicao.btn_proximo.click

  @msgs_campos_obrigatorios = ["O campo Resposta é obrigatório.", "O campo Resposta é obrigatório."]
end

Quando("não preencher os campos obrigatorios da aba Termo de responsabilidade") do
  @requerimento_aquisicao.preencher_aba_identificacao
  @requerimento_aquisicao.preencher_aba_dados_arma
  @requerimento_aquisicao.preencher_aba_declaracao_necessidade

  puts "Validando campos obrigatorios da aba Termo de responsabilidade"
  @requerimento_aquisicao.veracidade_check.click
  @requerimento_aquisicao.btn_emitir.click

  # 'O campo Declaração de Veracidade é obrigatório.'
  @msgs_campos_obrigatorios = ["O texto da imagem é obrigatório", "O campo posto é obrigatório."]
end

Entao("deve visualizar mensagem de obrigatoriedade") do
  @requerimento_aquisicao.validar_mensagens(@msgs_campos_obrigatorios)
end

# @campos_invalidos_aquisicao
# squema do Cenário: Verificar os campos inválidos do requerimento de aquisicao
Quando("informar dados inválidos para os campos da aba Identificacao para Cidadao e Cacador") do
  @requerimento_aquisicao.dados_invalidos_identificacao("PF")

  puts "Validando campos 'inválidos' da aba Identificacao para Cidadao e Cacador"
  @requerimento_aquisicao.btn_proximo.click

  @msgs_campos_invalidos = ["O campo CPF é inválido.", "O campo Data de Nascimento é inválido.",
                            "O campo Data de Expedição é inválido.", "O campo Email é inválido.",
                            "O valor do campo CEP é inválido."]
end

Quando("informar dados inválidos para os campos da aba Identificacao para Servidor Publico") do
  @requerimento_aquisicao.seleciona_categoria_pf("Servidor Público(Porte por prerrogativa de função)")
  @requerimento_aquisicao.dados_invalidos_identificacao("PF")

  puts "Validando campos 'inválidos' da aba Identificacao para Servidor Público"
  @requerimento_aquisicao.btn_proximo.click

  @msgs_campos_invalidos = ["O campo CPF é inválido.", "O campo Data de Nascimento é inválido.",
                            "O campo Data de Expedição é inválido.", "O campo Email é inválido.",
                            "O valor do campo CEP é inválido.", "O campo CNPJ do Órgão é inválido."]
end

Quando("informar dados inválidos para os campos da aba Identificacao de Pessoa Juridica") do
  @requerimento_aquisicao.escolha_tipo_pessoa("Pessoa Jurídica")
  @requerimento_aquisicao.dados_invalidos_identificacao("PJ")

  puts "Validando campos 'inválidos' da aba Identificacao de Pessoa Juridica"
  @requerimento_aquisicao.btn_proximo.click

  @msgs_campos_invalidos = ["O campo CNPJ é inválido.", "O valor do campo CEP é inválido.", "O campo Email é inválido."]
end

Quando("informar dados inválidos para os campos da aba Declaracao de necessidade") do
  @requerimento_aquisicao.preencher_aba_identificacao
  @requerimento_aquisicao.preencher_aba_dados_arma
  @requerimento_aquisicao.preencher_aba_declaracao_necessidade
  @requerimento_aquisicao.preencher_aba_termo_responsabilidade
end

Quando("informar dados inválidos para os campos da aba Termo de responsabilidade") do
end

Entao("deve visualizar mensagem de campo inválido") do
  @requerimento_aquisicao.validar_mensagens(@msgs_campos_invalidos)
end
