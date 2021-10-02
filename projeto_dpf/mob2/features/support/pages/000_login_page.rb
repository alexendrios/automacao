class Login < SitePrism::Page

=begin

    * Classe contendo o mapeamento do Login do sistema MOB2 - DPF
    * Script desenvolvido por Alexandre Pereira Santos - Célula 386
   
    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490
   
    By Jan 2018

=end 
    
    #Elementos: Inputs Mapeados
    element :login, '#username'
    element :password, '#password'
   
    ##metodo de acao: Logar no Sistema
    def logar(usuario, senha)
        login.set usuario
        password.set senha
        click_button 'kc-login'
    end
end