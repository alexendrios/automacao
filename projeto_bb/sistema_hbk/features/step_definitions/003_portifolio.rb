Dado("que eu informo o titular {string} agencia {string} conta {string} e a senha de autoatendimento {string}") do |titular, 
                                                                                            agencia, conta, senha_oito_digitos|
    

    #setup criando objetos
    @login = Login.new
    @portifolio = Portifolio.new
    @status = ''
    @info_titular = []
  
   visit 'http://hbk.desenv.bb.com.br:8007/gcs/statics/login/login.bb#/agcc'
   
    #setup
    @info_titular[0] = titular
    @info_titular[1] = agencia
    @info_titular[2] = conta
    @info_titular[3] = senha_oito_digitos

    @login.logar @info_titular
end
  
Quando("Acesso a operacoa portifólio") do
    @status = @portifolio.opcao_portifolio
end
  
Então("verifico o saldo da carteira retorno {string}") do |status|
    @status.to_s == status
end