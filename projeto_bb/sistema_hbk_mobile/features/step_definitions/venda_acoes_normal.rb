Quando("informo o tipo de venda {string}, o ativo {string}, a quantidade {string}, preço Limite {string},") do |tipo_venda,
                                                                                            ativo, quantidade, preco_limite|
=begin

    Configuração do objeto - Array deacordo com a operações
        por Default a 0ª posição referencia - se a operação:
                    a 7ª posição referencia - se a custódia;
                    a 8ª posição referencia - se a semha de seis dígitos; 
            * Operação Móvel
            -> 9 posições;
                sendo a 1ª posição referencia - se a operação
            * Operação Stop
            -> 7 posições;
            * Operação Simutâneo
            -> 9 posições;
            * Operação Normal
            -> 6 posições;
        **** Se necessário informar a data limite a 9ª posição e acrescentar uma
        possição a mais nas operações Anteriores. ***
=end

    #criando o objeto operação venda com os comportamentos da classe OperacoesAcoes e criando um objeto para aemazenar as informações da transação
    @operacao_venda = OperacoesAcoes.new
    @info_transacao_venda = []
    
    #setup - Carregando as informações no objeto - List - Array
    @info_transacao_venda[0] = tipo_venda
    @info_transacao_venda[1] = ativo
    @info_transacao_venda[2] = quantidade
    @info_transacao_venda[3] = preco_limite
end
  
Quando("e informo a custódia {string}, a senha de seis dígitos {string}") do |custodia, senha|
    
    @info_transacao_venda[7] = custodia
    @info_transacao_venda[8] = senha

    #efetuando a operação
    @operacao_venda.venda_acoes  @info_transacao_venda
    p @operacao_venda.menssagem_corpo
end

Então("eu vejo a seguinte a messagem de confirmação da venda {string}") do |menssagem|

    expect(@operacao_venda.confirmacao).to eql menssagem
end
