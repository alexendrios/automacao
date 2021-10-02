Quando("informo preço disparo {string}, limite de ganho {string}, disparo perda {string}, limite perda {string},") do |preco_disparo,
                                                                                            limite_ganho, disparo_perda, disparo_ganho|
    
    @info_transacao_compra[4] = preco_disparo
    @info_transacao_compra[5] = limite_ganho
    @info_transacao_compra[6] = disparo_perda
    @info_transacao_compra[7] = disparo_ganho
end