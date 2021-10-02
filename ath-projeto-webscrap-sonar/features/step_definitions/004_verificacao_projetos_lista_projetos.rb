Quando("informo uma um arquivo {string} contendo o resultado da extração dos projetos no Sonar,") do |arquivo_extracao|
  @coleta = ColetaDados.new
  @arquivo = arquivo_extracao
  @lista_projetos_sonar = @coleta.listar_extracao_sonar @arquivo 
 end

Quando("informo um arquivo {string} contendo a identificação da Sigla, o projeto e o QA responsável,") do |arquivo_qa|
  @lista_projetos_qa, @info_arquivo = @coleta.listar_dados_projetos arquivo_qa
  @projetos_falta_extracao = @coleta.comparar_listas_projetos @lista_projetos_sonar, @lista_projetos_qa
  @informacao_projeto_qa = @coleta.retornar_informacoes_arquivo_extrair @lista_projetos_sonar, @info_arquivo
end

Quando("ao logar na aplicação com os seguintes dados usuario {string} e senha {string}") do |usuario, senha|
  informacao_usuario = [usuario, senha]
  @coleta.logar_aplicacao informacao_usuario
end

Então("executo a extração") do
  @coleta.extracao_lista_projeto_salvando @projetos_falta_extracao, @informacao_projeto_qa
end
