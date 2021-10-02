# @manifestar_processo_aquisicao_PF
# Manifestar processo de aquisição para pessoa física
Quando("receber um processo para aquisicao de arma de fogo de pessoa fisica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_aquisicao_PF.txt")
end

Quando("solicitar manifestar o processo de aquisicao") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de aquisicao") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de aquisicao") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao para aquisicao") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Aquisição - Cidadão - Deferimento")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Entao("deve ser gerado um numero de autorizacao de aquisicao") do
  @msg_codigo = "Código de Autorização gerado: "
  @msg_sucesso = "Operação efetuada com sucesso."
  expect(@processo_page).to have_text(@msg_codigo)
  expect(@processo_page).to have_text(@msg_sucesso)

  @processo_page.armazena_codigo_gerado_txt(@msg_codigo, "cod_aprovacao_aquisicao_PF.txt")
end

# @manifestar_processo_registro_PF_sem_autorizacao
# Manifestar processo para registro de arma de fogo de pessoa física sem autorizacao de aquisicao
Quando("receber um processo para registro de arma sem autorizacao de aquisicao") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_registro_PF_sem_autorizacao.txt")
end

Quando("solicitar manifestar o processo de registro de arma sem autorizacao de aquisicao") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de registro de arma sem autorizacao de aquisicao") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de registro de arma sem autorizacao de aquisicao") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao de registro de arma sem autorizacao de aquisicao") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Aquisição - Cidadão - Deferimento")
   #@processo_page.selecionar_modelo_manifestacao


  #Dados guia de Trânsito
  @processo_page.seleciona_motivo_transito("Trânsito de Aquisição de Arma de Fogo")
  @processo_page.check_via_transito("Terrestre")
  @processo_page.data_inicial_prevista("21/06/2019")
  @processo_page.periodo_transito_estimado.click.set(15)
  @processo_page.salvar_manifestacao
end

Entao("deve mostrar a mensagem {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(@msg_sucesso)
end

# @manifestar_processo_registro_PF_com_autorizacao
# Manifestar processo de registro para pessoa física com autorização
Quando("receber um processo para registro de arma de fogo de pessoa fisica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_registro_PF_com_autorizacao.txt")
end

Quando("solicitar manifestar o processo de registro") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de registro") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de registro") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao para registro") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Aquisição - Cidadão - Deferimento")
   #@processo_page.selecionar_modelo_manifestacao


  #Dados guia de Trânsito
  @processo_page.seleciona_motivo_transito("Trânsito de Aquisição de Arma de Fogo")
  @processo_page.check_via_transito("Terrestre")
  @processo_page.data_inicial_prevista("21/06/2019")
  @processo_page.periodo_transito_estimado.click.set(15)
  @processo_page.salvar_manifestacao
end

Entao("deve exibir {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end

# @manifestar_processo_guia_transito_PF
# Manifestar processo de guia de transito de arma de fogo para pessoa fisica
Quando("receber um processo de guia de transito de arma de fogo para pessoa fisica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_guia_transito_PF.txt")
end

Quando("solicitar manifestar o processo de guia de transito") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de guia de transito") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de guia de transito") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao para guia de transito") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Deferimento - Guia de trânsito")
   #@processo_page.selecionar_modelo_manifestacao


  @processo_page.data_inicial_prevista
  @processo_page.periodo_transito_estimado.click.set(15)
  @processo_page.salvar_manifestacao
end

Entao("deve ser gerado o Código da Guia de Trânsito") do
  @msg_codigo = "Código da Guia de Trânsito Gerado: "
  @msg_sucesso = "Operação efetuada com sucesso."
  expect(@processo_page).to have_text(@msg_codigo)
  expect(@processo_page).to have_text(@msg_sucesso)
  @processo_page.armazena_codigo_gerado_txt(@msg_codigo, "cod_guia_transito_PF.txt")
end

# @manifestar_processo_renovacao_registro_PF
# Manifestar processo de renovacao de registro de arma de fogo para pessoa fisica
Quando("receber um processo de renovacao de registro de arma de fogo para pessoa fisica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_renovacao_registro_PF.txt")
end

Quando("solicitar manifestar o processo de renovacao de registro") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de renovacao de registro") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de renovacao de registro") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao renovacao para registro") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Renovação - Cidadão")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Quando("deve exibir a mensagem {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end

# @manifestar_processo_transferencia_registro_PF
# Manifestar processo de transferencia de registro de arma de fogo para pessoa fisica
Quando("receber um processo de transferencia de registro de arma de fogo para pessoa fisica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_transferencia_registro_PF.txt")
end

Quando("solicitar manifestar o processo de transferencia de registro") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de transferencia de registro") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de transferencia de registro") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao transferencia para registro") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Transferência - Cidadão")
   #@processo_page.selecionar_modelo_manifestacao


  #Dados guia de Trânsito
  @processo_page.check_via_transito("Terrestre")
  @processo_page.data_inicial_prevista
  @processo_page.periodo_transito_estimado.click.set(15)
  @processo_page.salvar_manifestacao

end

Entao("deve visualizar {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end

# @manifestar_processo_porte
# Manifestar processo de porte de arma de fogo
Quando("receber um processo de porte de arma de fogo") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_porte.txt")
end

Quando("solicitar manifestar o processo de porte de arma de fogo") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de porte de arma de fogo") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de porte de arma de fogo") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao de porte de arma de fogo") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Deferimento - Porte de Arma")
   #@processo_page.selecionar_modelo_manifestacao


  #Dados porte
  @processo_page.seleciona_categoria_porte('Defesa Pessoal')
  @processo_page.informar_periodo_porte(10)
  @processo_page.seleciona_tipo_periodo_porte('Ano(s)')
  @processo_page.seleciona_abrangencia_territorial('Nacional')
  @processo_page.add_abrangencia
  @processo_page.btn_salvar.click
  @processo_page.aguardar_carregamento
end

Entao("deve visualizar a mensagem {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end

# @manifestar_processo_ocorrencia_PF
# Manifestar processo de ocorrência de arma de fogo para pessoa fisica
Quando("receber um processo de ocorrência de arma de fogo para pessoa fisica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_ocorrencia_PF.txt")
end

Quando("solicitar manifestar o processo de ocorrência para pessoa fisica") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de ocorrência para pessoa fisica") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de ocorrência para pessoa fisica") do
  @processo_page.ocorrencia_etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao de ocorrência para pessoa fisica") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Deferimento - Registro de Ocorrência")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Entao("visualize {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end

# @manifestar_processo_segunda_via_registro_PF
# Manifestar processo de segunda via de registro de arma de fogo para pessoa fisica
Quando("receber um processo de segunda via de registro de arma para pessoa física") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_segunda_via_registro_PF.txt")
end

Quando("solicitar manifestar o processo de segunda via de registro para pessoa física") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de segunda via de registro para pessoa física") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de segunda via de registro para pessoa física") do
  @processo_page.etapas_do_processo_processo_segunda_via_pf
end

Quando("realizar uma nova manifestacao de decisao de segunda via de registro para pessoa física") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Deferimento - Segunda Via")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Entao("visualize a mensagem {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end

# @manifestar_processo_segunda_via_porte
# Manifestar processo de segunda via de porte de arma
Quando("receber um processo de segunda via de porte de arma") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_segunda_via_porte.txt")
end

Quando("solicitar manifestar o processo de segunda via de porte de arma") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de segunda via de porte de arma") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de segunda via de porte de arma") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao de segunda via de porte de arma") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Deferimento - Segunda Via")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Entao("exibe {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end

# ********Cenários de manifestação dos processos de pessoa jurídica ********* #

# @manifestar_processo_aquisicao_PJ
# Manifestar processo de aquisição para pessoa jurídica
Quando("receber um processo para aquisicao de arma de fogo para pessoa jurídica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_aquisicao_PJ.txt")
end

Quando("solicitar manifestar o processo de aquisicao para pessoa jurídica") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de aquisicao para pessoa jurídica") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de aquisicao para pessoa jurídica") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao de aquisicao para pessoa jurídica") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Aquisição - Cidadão - Deferimento")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Entao("deve ser gerado um numero de autorizacao de aquisicao para pessoa juridica") do
  @msg_codigo = "Código de Autorização gerado: "
  @msg_sucesso = "Operação efetuada com sucesso."
  expect(@processo_page).to have_text(@msg_codigo)
  expect(@processo_page).to have_text(@msg_sucesso)

  @processo_page.armazena_codigo_gerado_txt(@msg_codigo, "cod_aprovacao_aquisicao_PJ.txt")
end


# @requerer_e_manifestar_registro_PJ_sem_autorizacao
# @manifestar_processo_registro_PJ_sem_autorizacao
# Manifestar processo de registro para pessoa jurídica sem autorizacao
Quando("receber um processo para registro de arma de fogo de pessoa jurídica sem autorizacao") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_registro_PJ_sem_autorizacao.txt")
end

Quando("solicitar manifestar o processo de registro para pessoa jurídica sem autorizacao") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de registro para pessoa jurídica sem autorizacao") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de registro para pessoa jurídica sem autorizacao") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao de registro pessoa jurídica sem autorizacao") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Registro sem autorização para PJ")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

# @requerer_e_manifestar_registro_PJ_com_autorizacao
# @manifestar_processo_registro_PJ_com_autorizacao
# Manifestar processo de registro para pessoa jurídica com autorizacao
Quando("receber um processo para registro de arma de fogo de pessoa jurídica com autorizacao") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_registro_PJ_com_autorizacao.txt")
end

Quando("solicitar manifestar o processo de registro para pessoa jurídica com autorizacao") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de registro para pessoa jurídica com autorizacao") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de registro para pessoa jurídica com autorizacao") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao de registro pessoa jurídica com autorizacao") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  # binding.pry
  # #@processo_page.select_desc_manifestacao("Registro com autorização para PJ")
  #  #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Entao("a seguinte mensagem será exibida:{string}") do |msg_sucesso|
  expect(@processo_page).to have_text(@msg_sucesso)
end

# @requerer_e_manifestar_guia_PJ
# @manifestar_processo_guia_transito_PJ
# Cenario: Manifestar processo de guia de transito de arma de fogo para pessoa juridica
Quando("receber um processo de guia de transito de arma de fogo para pessoa juridica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_guia_transito_PJ.txt")
end

Quando("solicitar manifestar o processo de guia de transito para pessoa juridica") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de guia de transito para pessoa juridica") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de guia de transito para pessoa juridica") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao para guia de transito para pessoa juridica") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Deferimento - Guia de trânsito")
   #@processo_page.selecionar_modelo_manifestacao


  @processo_page.data_inicial_prevista
  @processo_page.periodo_transito_estimado.click.set(15)
  @processo_page.salvar_manifestacao
end

Entao("deve ser gerado o Código da Guia de Trânsito para pessoa juridica") do
  @msg_codigo = "Código da Guia de Trânsito Gerado: "
  @msg_sucesso = "Operação efetuada com sucesso."
  expect(@processo_page).to have_text(@msg_codigo)
  expect(@processo_page).to have_text(@msg_sucesso)
  @processo_page.armazena_codigo_gerado_txt(@msg_codigo, "cod_guia_transito_PJ.txt")
end

# @requerer_e_manifestar_renovacao_registro_PJ
# @manifestar_processo_renovacao_registro_PJ
# Cenario: Manifestar processo de renovacao de registro de arma de fogo para pessoa juridica
Quando("receber um processo de renovacao de registro de arma de fogo para pessoa juridica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_renovacao_registro_PJ.txt")
end

Quando("solicitar manifestar o processo de renovacao de registro para pessoa juridica") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de renovacao de registro para pessoa juridica") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de renovacao de registro para pessoa juridica") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao renovacao para registro para pessoa juridica") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Renovação - PJ")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Entao("a mensagem {string} será exibida") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end

# @requerer_e_manifestar_transferencia_registro_PJ
# @manifestar_processo_transferencia_registro_PJ
# Cenario: Manifestar processo de transferencia de registro de arma de fogo para pessoa juridica
Quando("receber um processo de transferencia de registro de arma de fogo para pessoa juridica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_transferencia_registro_PJ.txt")
end

Quando("solicitar manifestar o processo de transferencia de registro para pessoa juridica") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de transferencia de registro para pessoa juridica") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de transferencia de registro para pessoa juridica") do
  @processo_page.etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao transferencia para registro para pessoa juridica") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Transferência - PJ")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Entao("será exibida a mensagem {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end

# @requerer_e_manifestar_ocorrencia_PJ
# @manifestar_processo_ocorrencia_PJ
# Cenario: Manifestar processo de ocorrência de arma de fogo para pessoa juridica
Quando("receber um processo de ocorrência de arma de fogo para pessoa juridica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_ocorrencia_PJ.txt")
end

Quando("solicitar manifestar o processo de ocorrência para pessoa juridica") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de ocorrência para pessoa juridica") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de ocorrência para pessoa juridica") do
  @processo_page.ocorrencia_etapas_do_processo
end

Quando("realizar uma nova manifestacao de decisao de ocorrência para pessoa juridica") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Deferimento - Ocorrência PJ")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Entao("será exibido {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end


# @requerer_e_manifestar_segunda_via_registro_PJ
# @manifestar_processo_segunda_via_registro_PJ
# Cenario: Manifestar processo de segunda via de registro de arma para pessoa juridica
Quando("receber um processo de segunda via de registro de arma para pessoa juridica") do
  @processo_page = ProcessosPage.new
  @processo_page.receber_processo("requerimento_segunda_via_registro_PJ.txt")
end

Quando("solicitar manifestar o processo de segunda via de registro para pessoa juridica") do
  @processo_page.solicitar_manifestar
end

Quando("analisar os dados da situacao do processo de segunda via de registro para pessoa juridica") do
  @processo_page.situacao_do_processo
end

Quando("validar os dados das etapas do processo de segunda via de registro para pessoa juridica") do
  # @processo_page.etapas_do_processo
  @processo_page.etapas_do_processo_segunda_via_pj
end

Quando("realizar uma nova manifestacao de decisao de segunda via de registro para pessoa juridica") do
  @processo_page.nova_manifestacao
  @processo_page.seleciona_tipo_manifestacao("Decisão")
  @processo_page.escloha_situacao_decisao("Deferido")
  @processo_page.select_assunto_manifestacao("Decisão - Deferimento")
  #@processo_page.select_desc_manifestacao("Decisão - Deferimento - Segunda Via PJ")
   #@processo_page.selecionar_modelo_manifestacao

  @processo_page.salvar_manifestacao
end

Entao("será mostrado {string}") do |msg_sucesso|
  expect(@processo_page).to have_text(msg_sucesso)
end