
class Portifolio < SitePrism::Page 

    def initialize
        @menu = Menu.new
        @estrutura = EstruturAplicativo.new
    end

    def opcao_portifolio
        @estrutura.aceitar_alerta
        @menu.portifolio
        sleep(5)
        return true
    end  
end
