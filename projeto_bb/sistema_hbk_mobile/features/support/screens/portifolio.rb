class Portifolio < Appium::Driver

    def initialize
        @menu = Menu.new
        @informacoes = Tools.new
        @elemento_voltar = "iv_drawer"
        @elemento_saldo_carteira = "tv_pm_position_chart_value"
        @elemento_portifolio_sugerido = "ll_suggested_portfolio"
        @elemento_saldo_carteira_sugerido = "tv_pm_suggested_chart_value"
    end

    def voltar 
        find_element(:id, @elemento_voltar).click
    end

    def saldo_carteira 
        find_element(:id, @elemento_saldo_carteira).text
    end

    def portifolio_sugerido
        find_element(:id, @elemento_portifolio_sugerido).click
    end

    def saldo_carteira_sugerido 
        find_element(:id, @elemento_saldo_carteira_sugerido).text
    end

    def operacao_portifolio
        argumento = []
        voltar
        @menu.menu_opcoes
        @menu.portifolio
        argumento[0] = saldo_carteira
        sleep(3)
        portifolio_sugerido
        argumento[1] = saldo_carteira_sugerido
        return validando_portifolio argumento
    end

    def validando_portifolio(objeto)
        @file = 'informacoesPortifolio.txt'
        @info = "Valor Meu protifólio: #{objeto[0]}"
        @info += "Valor Portifólio Sugerido #{objeto[1]}"
        
        if objeto[0] == objeto[1]
            @informacoes.gravar_dados @file, @info
            return true
        else
            @informacoes.gravar_dados @file, @info
            return false
        end
    end
end