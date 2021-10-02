class Menu < SitePrism::Page

=begin

    * Classe referente a navegação no sistema HBK - BBB
    * Script desenvolvido por Alexandre Pereira Santos
   
    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490
   
    By Jan 2018

=end 

    #opções do menu
    def acoes
        click_link 'link-abrirAcoes-menu'
    end

    def calculadora_ir
        click_link 'link-abrirCalculadoraIR-menu'
    end

    def fundo_investimentos
        click_link 'link-abrirFundosInvestimentos-menu'
    end

    def lca_lci
        click_link 'link-abrirCAC-menu'
    end

    def oferta_publica
        click_link 'icon-oferta-publica fLeft'
    end

    def ouro
        click_link 'link-abrirOuro-menu'
    end

    def tesouro_direto
        click_link 'link-abrirTesouroDireto-menu'
    end

    def titulos_privados
        click_link 'link-abrirRendaFixa-menu'
    end

    def conta_corrente
        click_link 'link-abrirContaCorrente-menu'
    end

    def alteracao_email
        click_link 'link-consultarEmail-autorizacaoEmail'
    end

    def autorizacao_recebimento_email
        click_link 'link-consultarAutorizacao-autorizacaoEmail'
    end

    def cadastrar_investidor
        click_link 'link-consultarDadosParaCadastro-menu'
    end

    def responder_questionario_api
        click_link 'link-responderQuestionario-menu'
    end

    def portifolio
        click_link 'link-abrirPortifolioInvestimentos-menu'
    end
end