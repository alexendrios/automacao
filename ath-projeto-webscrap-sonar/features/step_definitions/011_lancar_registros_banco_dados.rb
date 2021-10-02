Quando("informar o arquivo de extração {string},") do |arquivo|
    @coleta = ColetaDados.new
    @db = Conexao.new
    @info_projeto = arquivo
end
  
Quando("ao ler essas informaações, que serão utolizadas para povoará o Banco de Dados") do
    conteudo = @coleta.conteudo_arquivo @info_projeto
    @retorno = @db.povoar_tabela conteudo
end
  
Então("retornará uma mensagem de sucesso: {string}") do |mensagem|
    expect(mensagem.eql? @retorno)
end