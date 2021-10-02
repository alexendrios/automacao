
########### Requerimento de aquisição para alteração concorrente ###########
Quando("solicitar a aquisicao de arma de fogo como pessoa fisica para recursos concorrentes") do
  @requerimento_aquisicao = RequerimentoAquisicaoPage.new
  @requerimento_aquisicao.load
end

Quando("preencher o formulário de aquisicao de pessoa fisica para recursos concorrentes") do
  @requerimento_aquisicao.escolha_tipo_pessoa("Pessoa Física")
  @requerimento_aquisicao.seleciona_categoria_pf("Cidadão")
  @requerimento_aquisicao.preencher_aba_identificacao
  @requerimento_aquisicao.preencher_aba_dados_arma
  @requerimento_aquisicao.preencher_aba_declaracao_necessidade
  @requerimento_aquisicao.preencher_aba_termo_responsabilidade
  @requerimento_aquisicao.emitir_requerimento
end

Entao("deve visualizar a mensagem de sucesso de aquisicao para pessoa fisica para recursos concorrentes") do
  expect(@requerimento_aquisicao).to have_text("Solicitação realizada.")
  expect(@requerimento_aquisicao).to have_text("REQUERIMENTO DE AQUISIÇÃO DE ARMA DE FOGO")
  expect(@requerimento_aquisicao).to have_text("CPF")
  @requerimento_aquisicao.armazena_numero_txt("requerimento_aquisicao_PF_recursos_concorrentes.txt")
end

########### Validação concorrente nas etapas do processo de aquisição ###########
Dado("que inicie uma sessão com o usuario {string} e senha {string}") do |usuario, senha|
  @processo_page = ProcessosPage.new
  @processo_page.acessar_home
end

Quando("acessar a tela de verificação das etapas do processo") do
  @processo_page.pesquisar_processo("requerimento_aquisicao_PF_recursos_concorrentes.txt")
  @processo_page.recebe_processo
  @processo_page.solicitar_manifestar
  @processo_page.situacao_do_processo
  @processo_page.etapa_identificacao
  @processo_page.etapa_arma_de_fogo
  @processo_page.etapa_documentacao

  # Realizando alterações da etapa de verificação
  @processo_page.check_SINIC.check
  @processo_page.aguardar_carregamento
  @processo_page.obs_SINIC.click.set("Observações script de teste")
  @processo_page.check_INFOSEG.check
  @processo_page.obs_INFOSEG.click.set("Observações script de teste")
  @primeira_aba = @processo_page.current_window
end

Quando("em uma nova aba do navegador acessar a mesma tela e clicar em salvar") do
  @processo_page.open_new_window
  @processo_page.mudar_foco
  @processo_page.receber_processo("requerimento_aquisicao_PF_recursos_concorrentes.txt")
  @processo_page.solicitar_manifestar
  @processo_page.situacao_do_processo
  @processo_page.etapas_do_processo

  #Salvando screenshot da modificação em nova aba
  @screenshot = "logs/shots/modificacoes_na_nova_aba.png"
  @processo_page.save_screenshot(@screenshot)
  embed(@screenshot, "image/png", "Screenshot: modificacoes_na_nova_aba.png")
end

Quando("retornar para a primeira aba e novamente clicar em salvar") do
  @processo_page.switch_to_window(@primeira_aba)
  @processo_page.btn_salvar.click
end

Quando("em uma nova sessão com o usuario {string} e senha {string} acessar a mesma tela e clicar em salvar") do |usuario, senha|
  using_session(usuario) do
    @processo_page.acessar_home_aba(usuario, senha)
    @processo_page.distribuir_processo("requerimento_aquisicao_PF_recursos_concorrentes.txt", "SOLANGE BERTO DE MEDEIROS")
    @processo_page.solicitar_manifestar
    @processo_page.situacao_do_processo
    @processo_page.etapas_do_processo
    @screenshot = "logs/shots/modificacoes_na_nova_sessão(#{usuario}).png"
    @processo_page.save_screenshot(@screenshot)
    embed(@screenshot, "image/png", "Screenshot: modificacoes_na_nova_sessão(#{usuario}).png")
  end
end

Quando("tentar salvar as alterações na sessão inicial") do
  @processo_page.btn_salvar.click
end

Entao("deve visualizar a mensagem de alerta: {string}") do |mensagem|
  expect(@processo_page).to have_text(mensagem)
end

########### Validação CID único na página para incluir Pessoa Física ###########
Dado("que esteja na página para incluir Pessoa Física") do
  @pessoa_fisica_page = PessoaFisicaPage.new
  @pessoa_fisica_page.incluir_pessoa_fisica
end

Dado("verifico que a URL possui um numero de CID") do
  @url_CID = @pessoa_fisica_page.current_url
end

Quando("acessar a mesma URL com o mesmo numero de CID em uma nova aba do navegador") do
  @pessoa_fisica_page.open_new_window
  @pessoa_fisica_page.mudar_foco
  @pessoa_fisica_page.visit(@url_CID)
end

Entao("o acesso na nova aba deve ser redirecionada para a tela home") do
  @pessoa_fisica_page.wait_until_body_home_visible
  expect(page).to have_text("Você está aqui:Home")
end
