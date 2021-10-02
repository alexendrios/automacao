class Menu Appium::Driver

=begin
    
    Script desenvolvido por: Alexandre Pereira Santos 
    Classe responsáveis pela  opções de operações do Sistema - Mobile - HBK
    A descrição das Operações relacionadas nesta classe
    *Operações:
        - Opções: Abre as opções de Menu;
    Opções de Menu:

        1 - Ações;
        2 - Página Inicial;
        3 - Calculadora de Investimentos;
        4 - Lci/Lca;
        5 - Fundos Investimentos;
        6 - Ouro
        7 - Tesouro Direto
        8 - Conta Corrente
        
    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490

    By Fev 2019
    
    Update: Mar 2019
=end
    
    def initialize
        #mapeamento dos elementos referente ao app.
        @elemento_opcoes = "Menu de Produtos"
        @elemento_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]"
        @elemento_pagina_principal = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]"
        @elemento_calculadora_investimentos = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[3]"
        @elemento_lca_lci = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[5]"
        @elemento_fundos_investimentos = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[5]"
        @elemento_ouro = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[7]"
        @elemento_tesouro_direto = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[8]"
        @elemento_conta_corrente = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[9]"
        @elemento_portifolio = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[2]"
    end


    #métodos referente a interação com o Menu
    def menu_opcoes
        find_element(:accessibility_id, @elemento_opcoes).click
    end

    def portifolio
        find_element(:xpath, @elemento_portifolio).click
    end

    def menu_acoes
        find_element(:xpath, @elemento_acoes).click
    end

    def menu_pagina_principal
        find_element(:xpath, @elemento_pagina_principal).click
    end

    def menu_calculadora_investimentos
        find_element(:xpath, @elemento_calculadora_investimentos).click
    end

    def menu_lcaLci
        find_element(:xpath, @elemento_lca_lci).click
    end

    def menu_fundos_investimentos
        find_element(:xpath, @elemento_fundos_investimentos).click
    end

    def menu_ouro
        find_element(:xpath, @elemento_ouro).click
    end

    def tesouro_direto 
        find_element(:xpath, @elemento_tesouro_direto).click
    end

    def conta_corrente 
        find_element(:xpath, @elemento_conta_corrente).click
    end
end
