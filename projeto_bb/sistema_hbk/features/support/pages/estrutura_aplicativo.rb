class EstruturAplicativo < SitePrism::Page


    def análise_perfil_investidor_resposta_nao
        click_button 'btn-fecharModalApiCliente-pergunta-analisePerfilInvestidor'
    end

    element :ativo_bolsa_input, '#idTabFiltro > div:nth-child(6) > a:nth-child(1)'

   

#métodos referente a ações - menu superior
    def saldo
        click_button 'btn-saldo-imc'
    end

    def compra
        click_button 'btn-comprar-imc'
    end

    def venda
        click_button 'btn-vender-imc'
    end
    
    def painel 
        click_link 'link-showPainel-homeIMC'
    end

    def ordem
        click_link 'link-showOrdens-homeIMC'
    end

    def custodia
        click_link 'link-showCustodia-homeIMC'
    end

    def financeiro
        click_link 'link-showFinanceiro-homeIMC'
    end

    def informes
        click_link 'link-showInformes-homeIMC'
    end

    def ativo_bolsa 
        ativo_bolsa_input.click
    end

    def aceitar_alerta
        find(:xpath, '/html/body/div[1]/div/div[10]/div/hbk-modal[1]/div/div/div/div[1]/div/div/div/a[2]/i').click
    end

   


end