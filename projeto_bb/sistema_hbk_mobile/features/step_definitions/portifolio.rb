Quando("Acesso o saldo do Meu Portifólio e acesso o saldo do Portifólio Sugerido") do
    
    #setup
    @portifolio = Portifolio.new
end

Então("verifico que os valores correspondem retornando {string}") do |status|
    
    expect(@portifolio.operacao_portifolio.to_s).to eql status
end