Dado("que eu esteja na tela do aplicativo HBK - INVESTIMENTOS") do
    @home = Hbk.new
    @home.tela_principal_aberta
end
  
Quando("informo agencia {string} conta {string} senha {string}") do |agencia, conta, senha|
      @cadastro = Login.new
      @cadastro.logar_conta agencia, conta, senha
end

Então("efetuo o login com sucesso") do
    sleep(20)   
    @home.tela_logada_aberta
end