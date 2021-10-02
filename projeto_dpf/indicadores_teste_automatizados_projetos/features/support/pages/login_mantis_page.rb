class LoginMantis< SitePrism::Page

=begin

    * Classe responável pelo Login no Sistema Mantis
    * Script - Desenvolvido por Alexandre Santos - STEFANINI - PROGRAMADOR JUNIOR
    * Version 1.0.2 Atualizado 06/11/2018
    
=end

    #Mapeando elementos 
    element :user_name, 'tr.row-1:nth-child(2) > td:nth-child(2) > input:nth-child(1)'
    element :password, 'tr.row-2:nth-child(3) > td:nth-child(2) > input:nth-child(1)'

    #mapeando botão
    element :sign_in, '.button'

    #Método Logar no Sistema
    def logar(usuario, senha)
        user_name.set usuario
        password.set senha
        sign_in.click
    end
end