class OperacoesAcoes < Appium::Driver

=begin

    * Script desenvolvido por Alexandre Pereira Santos 
    * Classe referente a Operações com Ações

        1 - Esta terá as funcionalidades e métodos referente ao Módulo Ações;
        2 - Esta terá a navegação referente ao menu da aplicação, onde corresponde cada funcionalidade de Módulos;
        3 - A estratégia adotada é a Classe Composta, sendo criado os objatos através do método construtor;
    
    *   Serão utilizados metodos referente a classe menu que navega através dos modulos da aplicação
    *   Conforme orientação de boas praticas a classe massante dos metodos encontra - se na EstrutruaAçoes
            onde a mesma foi adaptado nessa classe pois, torna - se necessário objetividade.
    * classe Específica referente as Operações de Ações:

            1 - Compra
            2 - Venda

    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490

    By Mar 2019
=end

    #Construtor da Classe
    def initialize
        #criação de  objetos
        @menu = Menu.new
        @estrutura = EstruturaAcoes.new
        @elemnto_mensagem_confirmacao = 'tv_alert_type'
        @elemnto_mensagem_corpo = "tv_alert_message"
    end

    #operacoes
    def compra_acoes(informacoes_compra)
        #funcionalidade que executa a operação compra de ações
        
        hide_keyboard
        @menu.menu_opcoes
        @menu.menu_acoes
        sleep(3)
        @estrutura.compra
        @estrutura.escolhendo_tipo_operacao_compra informacoes_compra
        @estrutura.comprar
        @estrutura.confirmar
    end

    def venda_acoes(argumento)
        #funcionalidade que executa a operação venda de ações

        @menu.menu_opcoes
        @menu.menu_acoes
        sleep(3)
        @estrutura.venda
        @estrutura.escolhendo_tipo_operacao_venda argumento
        @estrutura.vender
        @estrutura.confirmar
    end
end