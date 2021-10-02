Quando("eu informo um arquivo {string} contendo a identificação da Sigla, o projeto e o QA responsável,") do |arquivo_entrada|
  @coleta = ColetaDados.new
  @projetos, @input = @coleta.listar_dados_projetos arquivo_entrada
end

Quando("desejo visualizar os dados  referente aos indicadores {string} e {string},") do |issues, coverage|
  @informacoes_projeto = @coleta.extrair_dados_lista_projetos @projetos, issues, coverage, @input
end

Então("eu finalizo a operação salvando os dados em um arquivo .csv") do
  projeto = nil
  @coleta.criacao_arquivo_csv @informacoes_projeto, projeto
end
