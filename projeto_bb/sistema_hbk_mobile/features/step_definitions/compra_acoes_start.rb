Quando("informo o tipo de compra {string}, o ativo {string}, a quantidade {string}, preço Disparo {string}, preço Limite {string},") do |modalidade, 
                                                                                                                            ativo, quantidade, preco_disparo, preco_limite|
  
    @info_transacao_compra[0] = modalidade
    @info_transacao_compra[1] = ativo
    @info_transacao_compra[2] = quantidade
    @info_transacao_compra[3] = preco_disparo
    @info_transacao_compra[4] = preco_limite                                                                                                               
end
