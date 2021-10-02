class LoginJenkins < SitePrism::Page

=begin

    * Classe responável pelo Login no Sistema Jenkins
    * Script - Desenvolvido por Alexandre Santos - STEFANINI - PROGRAMADOR JUNIOR
    * Version 1.0.2 Atualizado 06/11/2018
    
=end

    #Mapeando elementos 
    element :user_name, '#j_username'
    element :password, 'div.formRow:nth-child(3) > input:nth-child(1)'

    #mapeando botão
    element :sign_in, '.submit-button'

    #Método Logar no Sistema
    def logar(usuario, senha)
        user_name.set usuario
        password.set senha
        sign_in.click
    end
end