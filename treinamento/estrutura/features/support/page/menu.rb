class Menu < SitePrism::Page

    element :contato, '#contact-link'

    def escolher_menu argumento
        if argumento.upcase == 'CONTATO'
            contato.click
        elsif argumento.upcase == 'LOGAR' 
            click_link 'Sign in'
        end
    end
end