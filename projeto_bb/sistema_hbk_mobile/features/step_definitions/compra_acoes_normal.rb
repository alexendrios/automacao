
Dado("que eu esteja logado com os seguintes dados agencia {string} conta {string} senha {string}") do |agencia, conta, senha|
    
    #setup login 
    @home = Hbk.new
    @home.tela_principal_aberta
    @logar = Login.new

    #executando o login
    @logar.logar_conta agencia, conta, senha
    sleep(15)

    #criação do objeto OperacoesAcoes
    @operacao_compra = OperacoesAcoes.new
    @info_transacao_compra = []
end
  
Quando("informo o tipo de compra {string}, o ativo {string}, a quantidade {string}, preço Limite {string},") do |modalidade, 
    ativo, quantidade, preco_limite|
    
    #setup operação compra de ações
    @info_transacao_compra[0] = modalidade
    @info_transacao_compra[1] = ativo
    @info_transacao_compra[2] = quantidade
    @info_transacao_compra[3] = preco_limite
end
  
Quando("para finalizar a compra informo a senha de seis dígitos {string}") do |senha|
    
    @info_transacao_compra[10] = senha

    @operacao_compra.compra_acoes @info_transacao_compra
end

Então("eu vejo a seguinte a menssagem de confirmação da compra {string}") do |menssagem|
    expect(@operacao_compra.confirmacao).to eql menssagem
end