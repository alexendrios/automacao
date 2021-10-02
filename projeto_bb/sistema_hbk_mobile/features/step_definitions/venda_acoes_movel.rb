Quando("preço inicio stop móvel {string}, preco ajuste inicial {string},") do |preco_inicioStopMovel,
                                                                            preco_ajusteInicial|

   #setup - Carregando as informações no objeto - List - Array
   @info_transacao_venda[5] = preco_inicioStopMovel
   @info_transacao_venda[6] = preco_ajusteInicial
end