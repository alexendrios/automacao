Quando("informo uma um arquivo {string} contendo as seguintes informações: identificação da Sigla, o projeto e o QA responsável,") do |arquivo_entrada|
  @coleta = ColetaDados.new
  @projetos, @input = @coleta.listar_dados_projetos arquivo_entrada
end

Então("salvo as informações da extração em um arquivo .csv") do
  @coleta.extracao_lista_projeto_salvando @projetos, @input
end
