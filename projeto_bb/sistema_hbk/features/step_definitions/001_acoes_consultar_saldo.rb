                                                                                                                                                                        
Dado("que eu estou logado no sistema HBK com as seguintes informações: titular {string} agência {string} conta {string} e a senha de autoatendimento {string}") do |titular,
                                                                                                                                        agencia, conta, senha_oito_digitos|                                                                                                                                          
    #setup criando objetos
    @login = Login.new
    @acoes = Acoes.new

    @info_titular = []
  
   visit 'http://hbk.desenv.bb.com.br:8007/gcs/statics/login/login.bb#/agcc'
   
    #setup
    @info_titular[0] = titular
    @info_titular[1] = agencia
    @info_titular[2] = conta
    @info_titular[3] = senha_oito_digitos

    @login.logar @info_titular
   
end                                                                                                                                                                     
                                                                                                                                                                            
Quando("eu navego no menu açoes, consigo visulizar o saldo") do                                                                                                         
    
    @acoes.verificar_saldo
end                                                                                                                                                                     
