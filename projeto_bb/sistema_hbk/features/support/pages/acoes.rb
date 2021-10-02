class Acoes < SitePrism::Page

    def initialize
        @menu = Menu.new
        @estrutura = EstruturAplicativo.new
    end

    def verificar_saldo
        @menu.acoes
        #@estrutura.análise_perfil_investidor_resposta_nao
        @estrutura.saldo
    end
end