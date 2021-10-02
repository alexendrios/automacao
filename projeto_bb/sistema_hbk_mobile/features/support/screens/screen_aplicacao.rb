class Hbk < Appium::Driver

    def initialize
        @home_screen = "activity_main_container"
        @home_logado = "ll_drawer_main_content"
    end

    def tela_principal_aberta
        find_element(:id, @home_screen)
    end

    def tela_logada_aberta
        find_element(:id, @home_logado)
    end
end 