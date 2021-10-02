class LoginJenkins < SitePrism::Page

    #Mapeando elementos 
    element :user_name, '#j_username'
    element :passoword, 'div.formRow:nth-child(3) > input:nth-child(1)'

    #mapeando botão
    element :sign_in, '.submit-button'

    #Método Logar no Sistema
    def logar(usuario, senha)
        user_name.set usuario
        passoword.set senha
        sign_in.click
    end
end