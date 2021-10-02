class PageHelper < SitePrism::Page

    element :login, 'input[name="login"]'
    element :senha, 'input[name="senha"]'
    element :btn_entrar, 'input[value="Entrar"]'

    def acessar_home(user, password)
        visit'/'
        login.set(user)
        senha.set(password)
        btn_entrar.click
    end


end
