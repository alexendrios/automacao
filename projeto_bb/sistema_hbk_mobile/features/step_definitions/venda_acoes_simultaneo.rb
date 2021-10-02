Quando("preço limite ganho {string}, preco limite perda {string},") do |precoLimite_ganho,
                                                                        precoLimite_perca|
    #setup - Carregando as informações no objeto - List - Array
    @info_transacao_venda[5] = precoLimite_ganho
    @info_transacao_venda[6] = precoLimite_perca
end