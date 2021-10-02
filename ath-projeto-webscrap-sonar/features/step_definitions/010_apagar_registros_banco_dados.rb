Quando("ao chamar a função limpar_registros_tabela da classe Conexão,") do
    db = Conexao.new
    @retorno = db.limpar_registros_tabela
end
  
Então("retornará uma mensagem de sucesso referente a limpeza dos Dados: {string}") do |mensagem|
    expect(mensagem.eql? @retorno) 
end