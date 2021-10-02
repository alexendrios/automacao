Quando("informo  o tipo de operação desejada {string} a modalidade {string},") do |operacao, modalidade|
    
    #setup
    @operacao_LcaLci = OperacaoLcaLci.new
    @infomacao_resgate = [operacao, modalidade]
end

Quando("solicito o tipo de resgate {string}, valor de resgate {string}") do |resgate, valor_resgate|
                                                                     
    @infomacao_resgate << resgate
    @infomacao_resgate << valor_resgate 
end                                                                               
  
Quando("para finalizar o resgate informo a senha de seis dígitos {string}") do |senha|
    
    @infomacao_resgate[4] = senha 

    #executando o teste
    @operacao_LcaLci.realizar_resgate @infomacao_resgate
end
  
Então("eu vejo a seguinte a menssagem de confirmação de resgate {string}") do |menssagem|
    expect(@operacao_LcaLci.confirmacao).to eql menssagem
end