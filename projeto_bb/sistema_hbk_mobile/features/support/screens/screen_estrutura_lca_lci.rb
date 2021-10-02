class EstruturaLcaLci < Appium::Driver
=begin
    
        Script desenvolvido por: Alexandre Pereira Santos 
        Classe responsáveis pelo Mapeamento da Operação Ações - Mobile - HBK
        O mapeamento dos seguintes processos referente ao Módulo LCI/LCA:
      
            º Investimentos
            º Resgate
            º Consultas
            º Cancelamento
       
        * A estratégia adotada é a criação dos objetos mapeados tornando utilizavéis através do construtor
            Foram criados alguns metodos default, onde os mesmos serão consumidos nas classes mais específicas
            
        * Contact: 
            1 - email: alex.endrios@hotmail.com
            2 - celular: 61-992861490
    
        By Mar 2019
=end   

    #Construtor
    def initialize
        #mapeamento dos elementos da módulo Lca/Lci

        @elemento_investimentos_lca_lci = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView"
        @elemento_resgate_lca_lci  = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[3]/android.widget.LinearLayout/android.widget.LinearLayout"
        @elemento_consulta_lca_lci = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[4]/android.widget.LinearLayout/android.widget.LinearLayout"
        @elemento_cancelamento_lca_lci = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[5]/android.widget.LinearLayout/android.widget.LinearLayout"

        #mapeamento investimentos
        @elemento_investimento_modalidade = "lcalci_investment_sp_modality_product"

        #opções modalidade
        @elemento_investimento_modalidade_pos_cdi_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.LinearLayout"
        @elemento_investimento_modalidade_pos_fixada_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout"
        @elemento_valor_investido_input = "lcalci_investment_et_invest_value"
        @elemento_senha_investimento_input = "lcalci_investment_ed_pass_six"

        #mapeamento Botões
        @elemento_investir_button = "lcalci_investment_bt_invest"
        @elemento_resgatar_button = "lcalci_rescue_bt_rescue"
        @elemento_button_cancelar = "button2"
        @elemento_button_confirmar ="button1" 

        
        #mapeamento resgate
        @elemento_resgate_modalidade = "lcalci_rescue_sp_modality" 
        @elemento_resgate_aplicacao = "lcalci_rescue_sp_application"
        @elemento_resgate_tipoResgate = "lcalci_rescue_sp_rescue_type"
        
        #opções modalidades
        @elemento_resgate_modalidade_pos_cdi_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout"
        @elemento_resgate_modalidade_pos_fixada_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout"

        #opçoes aplicação
        @elemento_resgate_opcaoValor_testeParcial_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_resgate_opcaoValor_testeTotal_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[8]/android.widget.LinearLayout"
        
        #tipo de resgate
        @elemento_resgate_tipoResgate_total = "	/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout"
        @elemento_resgate_tipoResgate_parcial = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout"

        @elemento_valor_resgate_input = "lcalci_rescue_et_rescue_value"
        @elemento_senha_resgate_input =  "lcalci_rescue_ed_pass_six"
        
        #mapeamento consultas
        @elemento_saldo_consulta_input = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[1]"
        @elemento_operacaoResgatada_consulta_input = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[2]"
        
        #confirmação
        @elemento_operacaoResgate_confirmacao_input = "tv_alert_type"
    end

     #operação
    def operacao(info_operacao)
        #método similar a um menu - Operações disponíveis - LCA/LCI
        sleep(2)
        case info_operacao[0]
        when 'Investimentos'
          find_element(:xpath,  @elemento_investimentos_lca_lci).click
        when 'Resgate'
            find_element(:xpath, @elemento_resgate_lca_lci).click
        when 'Consulta'
            find_element(:xpath, @elemento_consulta_lca_lci).click
        when 'Cancelamento'
            find_element(:xpath, @elemento_cancelamento_lca_lci).click
        end 
        sleep(3)
    end

    #botões
    def investir
        find_element(:id, @elemento_investir_button).click
    end

    def resgatar 
        find_element(:id, @elemento_resgatar_button).click
    end

    def consultar_saldo
        find_element(:xpath, @elemento_saldo_consulta_input).click
    end

    def consultar_operacoesResgatada
        find_element(:xpath, @elemento_operacaoResgatada_consulta_input).click
    end

    def investimento_modalidade 
        find_element(:id, @elemento_investimento_modalidade).click
    end

    def resgate_modalidade 
        find_element(:id, @elemento_resgate_modalidade).click
    end

    def resgate_aplicacao
        find_element(:id, @elemento_resgate_aplicacao).click
    end

    def resgate_tipoResgate 
        find_element(:id, @elemento_resgate_tipoResgate).click
    end

    def confirmar_operacao
        find_element(:id, @elemento_button_confirmar).click
    end

    def cancelar_operacao
        find_element(:id, @elemento_button_cancelar).click
    end

    #menssagens

    def confirmacao_resgate
        find_element(:id, @elemento_operacaoResgate_confirmacao_input).text
    end


    def investimento(info_investimento)
        #método default referente ao investimento - Operação LCA/LCI

        investimento_modalidade
        case info_investimento[1]
        when "BB LCA POS CDI COM RESGATE"
            find_element(:xpath, @elemento_investimento_modalidade_pos_cdi_1_input).click
        when "LCI POS FIXADA COM RESGATE"
            find_element(:xpath, @elemento_investimento_modalidade_pos_fixada_input).click
        end
        find_element(:id, @elemento_valor_investido_input).send_keys info_investimento[2]
        find_element(:id, @elemento_senha_investimento_input).send_keys info_investimento[3]
    end

    def escolher_tipo_resgate(info_resgate)
        
        resgate_aplicacao
        case info_resgate[2]
        when "Parcial"
            find_element(:xpath, @elemento_resgate_opcaoValor_testeParcial_input).click
            resgate_tipoResgate
            find_element(:xpath, @elemento_resgate_tipoResgate_parcial).click
            find_element(:id, @elemento_valor_resgate_input).send_keys info_resgate[3]
        when "Total"
            find_element(:xpath, @elemento_resgate_opcaoValor_testeTotal_input).click
            resgate_tipoResgate
            find_element(:xpath, @elemento_resgate_tipoResgate_total).click
        end
        hide_keyboard
    end

    def resgate(info_resgate)
        #método default referente ao resgate - Operação LCA/LCI

        resgate_modalidade
        case info_resgate[1]
        when "BB LCA POS CDI COM RESGATE"
            find_element(:xpath, @elemento_resgate_modalidade_pos_cdi_input).click
        when "LCI POS FIXADA COM RESGATE"
            find_element(:xpath, @elemento_resgate_modalidade_pos_fixada_input).click
        end
        escolher_tipo_resgate info_resgate
        find_element(:id, @elemento_senha_resgate_input).send_keys info_resgate[4]
        hide_keyboard
    end
end