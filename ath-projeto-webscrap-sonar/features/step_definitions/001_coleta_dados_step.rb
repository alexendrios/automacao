Dado("eu esteja logado na aplicação usuario {string} e senha {string}") do |usuario, senha|
  #Setup
  @coleta = ColetaDados.new
  @projeto
  @registros_identificacao
  @registros_issues
  @registros_coverage

  informacao_usuario = [usuario, senha]
  @coleta.logar_aplicacao informacao_usuario
end

Quando("eu informo o nome do projeto {string},") do |projeto|
  @projeto = projeto
  @coleta.exibir_aplicacao @projeto
end

Quando("desejo visualizar os dados  {string} para extrair as informações sobre Bugs, Code Smalls e Vulnerabilities,") do |opcao|
  @registros_issues, @registros_identificacao = @coleta.extrair_dados opcao
end

Quando("desejo visualizar os dados {string} para extrair as informações sobre a cobertura de Código") do |opcao|
  @registros_coverage, @registros_identificacao = @coleta.extrair_dados opcao
end

Então("eu salvo os dados em um arquivo.csv") do
  informacoes_resultado_extracao = @coleta.formalizar_dados @registros_identificacao, @registros_issues, @registros_coverage
  @coleta.criacao_arquivo_csv informacoes_resultado_extracao, @projeto
end
