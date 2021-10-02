
Dado("que eu estou na página do Sistem") do
    #setup criando objetos
    @login = Login.new   
    @info_titular = []
    
    visit "http://hbk.desenv.bb.com.br:8007/gcs/statics/login/login.bb#/agcc"
end
  
Quando("eu informo o titular {string} agência {string} conta {string} e a senha de autoatendimento {string}") do |titular, 
    agencia, conta, senha_oito_digitos|

       
    #setup
    @info_titular[0] = titular
    @info_titular[1] = agencia
    @info_titular[2] = conta
    @info_titular[3] = senha_oito_digitos

    @login.logar @info_titular
    sleep(15)
end

Entao("eu vejo a seguinte menssagem {string}") do |menssagem|

    expect(page).to have_content menssagem
end