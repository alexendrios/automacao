Quando("chamar a conexão do Banco de Dados") do
    conection = Conexao.new
    @Status, rs = conection.conectar
end
  
Então("retorna um Status com a seguinte mensagem {string}") do |status|
    expect(@status.eql? status)
end