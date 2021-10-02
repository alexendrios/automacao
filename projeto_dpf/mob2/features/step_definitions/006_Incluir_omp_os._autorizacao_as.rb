Quando("Subtipo de Transporte {string}, Observação  {string}, Autoridade Determinante {string}, nome responsável {string}, dados em referência a Equipamento: Armamento {string}, código centro de custo {string}, centro de custo {string},") do |subtipo_transporte, 
                                                                                                                                                                         observacoes, autoridade_determinante, nome_responsavel, armamento, codigo_custo, centro_custo|
    
    #setup
    @dados[24] = subtipo_transporte 
    @dados[25] = observacoes
    @dados[30] = autoridade_determinante
    @dados[31] = nome_responsavel
    @dados[32] = armamento
    @dados[38] = codigo_custo
    @dados[39] = centro_custo
end

Quando("justificativa {string}") do |justificativa|
    #carregando a classe
    @pesquisar = Pesquisar.new

    #executando o teste
    @pesquisar.justificativa justificativa
    @pesquisar.autorizar_ad 
end
