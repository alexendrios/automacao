Quando("solicitar a transferencia de Registro para pessoa física") do
  @requerimento_transferencia = RequerimentoTransferenciaRegistroPage.new
  @requerimento_transferencia.load
end

Quando("preencher o formulário de transferencia de Registro para pessoa física") do

  # Para esse cenário a massa de teste está centralizada na Page.
  # O método "transferir_para_adquirente" transfere o registro para um adquirente qualquer
  # O método "transferir_para_proprietario" transfere o registro de volta para o proprietário original

  @requerimento_transferencia.transferir_para_adquirente
  # @requerimento_transferencia.transferir_para_proprietario

  @requerimento_transferencia.btn_proxima.click
  @requerimento_transferencia.aguardar_carregamento

  @declaracao_necessidade = "Grande índice de crimes contra o patrimônio," +
                            "roubo seguido de morte(latrocínios)," +
                            "bem como os de elevados índices de crimes dolosos contra a vida(homicídios)."

  @declaracao_residentes = "Declaro que não habitam"
  @requerimento_transferencia.declarar_efetiva_necessidade(@declaracao_necessidade, @declaracao_residentes)
  @requerimento_transferencia.btn_proxima.click
  @requerimento_transferencia.aguardar_carregamento
  @requerimento_transferencia.declaracao_veracidade_check.check
  @requerimento_transferencia.seleciona_uf_atendimento("DF")
  # binding.pry
  @requerimento_transferencia.seleciona_municipio_atendimento("Brasília")
  @requerimento_transferencia.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_transferencia.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de transferencia de Registro para pessoa física") do
  expect(@requerimento_transferencia).to have_text("Solicitação realizada.")
  expect(@requerimento_transferencia).to have_text("REQUERIMENTO DE TRANSFERÊNCIA DE REGISTRO DE ARMA DE FOGO")
  expect(@requerimento_transferencia).to have_text("CPF")
  @requerimento_transferencia.armazena_numero_txt("requerimento_transferencia_registro_PF.txt")
end

# ******** Cenários de transferencia para pessoa jurídica ********* #

# @requerer_e_manifestar_transferencia_registro_PJ
# @requerimento_transferencia_registro_PJ
# Cenario: Requerimento de transferencia de Registro para pessoa juridica
Quando("solicitar a transferencia de Registro para pessoa juridica") do
  @requerimento_transferencia = RequerimentoTransferenciaRegistroPage.new
  @requerimento_transferencia.load
end

Quando("preencher o formulário de transferencia de Registro para pessoa juridica") do
  # Para esse cenário a massa de teste está centralizada na Page.
  # O método "transferir_para_adquirente_PJ" transfere o registro para um adquirente qualquer
  # O método "transferir_para_proprietario_PJ" transfere o registro de volta para o proprietário original

  # @requerimento_transferencia.transferir_para_adquirente_PJ
  @requerimento_transferencia.transferir_para_proprietario_PJ
  @requerimento_transferencia.btn_proxima.click
  @requerimento_transferencia.aguardar_carregamento
  @requerimento_transferencia.declaracao_necessidade_check.check
  @requerimento_transferencia.btn_proxima.click
  @requerimento_transferencia.aguardar_carregamento
  @requerimento_transferencia.declaracao_veracidade_check.check
  @requerimento_transferencia.seleciona_uf_atendimento("DF")
  @requerimento_transferencia.seleciona_municipio_atendimento("Brasília")
  @requerimento_transferencia.seleciona_unidade_atendimento("SUPERINTENDÊNCIA REGIONAL DE POLÍCIA FEDERAL NO DISTRITO FEDERAL - SR/PF/DF")
  @requerimento_transferencia.btn_emitir_requerimento.click
end

Entao("deve visualizar o requerimento de transferencia de Registro para pessoa juridica") do
  expect(@requerimento_transferencia).to have_text("Solicitação realizada.")
  expect(@requerimento_transferencia).to have_text("REQUERIMENTO DE TRANSFERÊNCIA DE REGISTRO DE ARMA DE FOGO")
  expect(@requerimento_transferencia).to have_text("CNPJ")
  @requerimento_transferencia.armazena_numero_txt("requerimento_transferencia_registro_PJ.txt")
end
