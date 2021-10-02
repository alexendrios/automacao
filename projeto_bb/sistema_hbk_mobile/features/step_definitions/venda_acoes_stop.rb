Quando("informo o tipo de venda {string}, o ativo {string}, a quantidade {string}, preço Disparo {string}, preco Limite {string},") do |tipo_venda,
                                                                                                     ativo, quantidade, preco_disparo, preco_limite|
  
    #criando o opjeto operação venda com os comportamentos da classe OperacoesAcoes e criando um objeto para aemazenar as informações da transação
    @operacao_venda = OperacoesAcoes.new
    @info_transacao_venda = []

    #setup - Carregando as informações no objeto - List - Array
    @info_transacao_venda[0] = tipo_venda
    @info_transacao_venda[1] = ativo
    @info_transacao_venda[2] = quantidade
    @info_transacao_venda[3] = preco_disparo
    @info_transacao_venda[4] = preco_limite
end
