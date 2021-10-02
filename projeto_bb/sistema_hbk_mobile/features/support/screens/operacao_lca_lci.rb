class OperacaoLcaLci < Appium::Driver

    #Construtor
    def initialize
        @menu = Menu.new
        @estrutura = EstruturaLcaLci.new
    end

    def realizar_investimentos(info_investimento)
        
        @menu.menu_opcoes
        @menu.menu_lcaLci
        @estrutura.operacao info_investimento
        @estrutura.investimento info_investimento
        @estrutura.investir 
    end

    def confirmar
        @estrutura.confirmar_operacao
    end

    def cancelar
        @estrutura.cancelar_operacao
    end

    def realizar_resgate(info_investimento)
        @menu.menu_opcoes
        @menu.menu_lcaLci
        @estrutura.operacao info_investimento
        @estrutura.resgate info_investimento
        @estrutura.resgatar 
        confirmar
    end

    def confirmacao
        @estrutura.confirmacao_resgate
    end
end