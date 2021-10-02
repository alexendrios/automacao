class EstruturaAcoes < Appium::Driver
=begin
    
        Script desenvolvido por: Alexandre Pereira Santos 
        Classe responsáveis pelo Mapeamento da Operação Ações - Mobile - HBK
        O mapeamento dos seguintes processos referente ao Módulo Ações:
      
            º Painel
            º Consultas
            º Ordem
            º Custódia
            º Financeiro
            º Informe
            º Ativo da Bolsa
            º Utilitários
            ° Compra de Ações
            ° Venda de ações
        
        * A estratégia adotada é a criação dos objetos mapeados tornando utilizavéis através do construtor
            Foram criados alguns metodos default, onde os mesmos serão consumidos nas classes mais específicas
            
        * Contact: 
            1 - email: alex.endrios@hotmail.com
            2 - celular: 61-992861490
    
        By Mar 2019
=end   

    #Construtor da Classe
    def initialize
        #Mapeamento Android

        #mapeamento elementos - Ações - operação painel
        @elemento_painel_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView"
        @elemento_favoritosOpcoes_acoes = "iv_stocks_menu"
        @elemento_opcaoSugeridas_acoes =  "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.ScrollView[2]/android.widget.ExpandableListView/android.widget.RelativeLayout[1]/android.widget.LinearLayout[1]/android.widget.TextView"
        @elemento_carteiraAgo2018_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.ScrollView[2]/android.widget.ExpandableListView/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_carteiraJun2018_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.ScrollView[2]/android.widget.ExpandableListView/android.widget.RelativeLayout[3]/android.widget.LinearLayout"
        @elemento_meusPapeis_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.ScrollView[2]/android.widget.ExpandableListView/android.widget.RelativeLayout[2]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_favoritos_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.ScrollView[2]/android.widget.ExpandableListView/android.widget.RelativeLayout[3]"
        @elemento_carteira1_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.ScrollView[2]/android.widget.ExpandableListView/android.widget.RelativeLayout[4]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_carteira3_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.ScrollView[2]/android.widget.ExpandableListView/android.widget.RelativeLayout[5]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_test2_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[1]/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.RelativeLayout[2]/android.widget.ScrollView[2]/android.widget.ExpandableListView/android.widget.RelativeLayout[6]/android.widget.LinearLayout/android.widget.TextView"

        #mapeamento elementos - Ações - Consultas
        @elemento_consultas_acoes =  "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView"
        @elemento_saldo_acoes = "tv_query_item_balance"
        
        #mapeamento elementos - Ações - ordem
        @elemento_ordem_acoes = "tv_query_item_proposal"
        @elemento_ordemTempoReal_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[1]/android.widget.TextView"
        @elemento_consultaOrdem_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[2]/android.widget.TextView"
        @elemento_pedentes_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[1]"
        @elemento_finalizadoNoDia_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[2]"
        
        #mapeamento elementos - Ações -custódia
        @elemento_custodia_acoes = "tv_query_item_closed_offers"
        @elemento_custodiaCarteria_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[1]"
        @elemento_custodiaSaldo_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[2]"
        @elemento_custodiaMovimento_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[3]"

        #mapeamento elementos - Ações -financeiro
        @elemento_financeiro_acoes = "tv_query_item_financial"
        @elemento_financeiroPrevisao_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[1]"
        @elemento_financeiroResumoDia_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[2]"
        @elemento_financeiroMovimentacao_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[3]"

        #mapeamento elementos - Ações -informes
        @elemento_informes_acoes = "tv_query_item_informs"
        @elemento_informesRelatorioBB_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[1]"
        @elemento_informesNoticiaBovespa_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[2]"

        #mapeamento elementos - Ações -Ativo da Bolsa
        @elemento_ativoBolsa_acoes = "tv_query_item_other_prospects"

        #mapeamento elementos - Ações - Utilitários
        @elemento_utilitários_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[5]/android.widget.LinearLayout/android.widget.LinearLayout"
        @elemento_utilitários_ultimaAtualizacoesOrdens_acoes = '//android.widget.LinearLayout[@content-desc="Últimas Atualizações de Ordens"]/android.widget.LinearLayout[1]'
        @elemento_utilitários_cincoMelhores_acoes = '//android.widget.LinearLayout[@content-desc="Cinco Melhores"]/android.widget.LinearLayout[1]'
        @elemento_utilitários_volumeCorretora_acoes = '//android.widget.LinearLayout[@content-desc="Volume por corretora"]/android.widget.LinearLayout[1]'
        @elemento_utilitários_ultimosNegocios_acoes = '//android.widget.LinearLayout[@content-desc="Últimos negócios"]/android.widget.LinearLayout[1]'
        @elemento_utilitários_alertasPrecos_acoes = '//android.widget.LinearLayout[@content-desc="Alertas de Preço"]/android.widget.LinearLayout'

        #mapeamento elementos - Ações - operação compra de ações
        @elemento_compra_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[2]/android.widget.LinearLayout/android.widget.LinearLayout"
        @elemento_compra_normal = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[1]"
        @elemento_compra_start = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[2]"
        @elemento_compra_stop_programado = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[3]"
    
        #mapeando elementos - Ações - operação venda de ações
        @elemento_venda_acoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.support.v4.widget.DrawerLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.support.v4.widget.DrawerLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.widget.HorizontalScrollView/android.widget.LinearLayout/android.support.v7.app.ActionBar.Tab[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.ImageView"
        @elemento_venda_normal = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[1]"
        @elemento_venda_stop = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[2]"
        @elemento_venda_simutaneo = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[3]"
        @elemento_venda_movel = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.LinearLayout[1]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[4]"

        #custódia
        @elemento_tipo_custodia = "sp_custody_elements"
        @elemento_tipo_custodia_contaCorrente = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[1]"
        @elemento_tipo_custodia_investimentos = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[2]"

        #mapeamento botões
        @elemento_button_comprar = "btn_buy"
        @elemento_button_comprar_acoes = 'bt_topfive_widget_buy'
        @elemento_button_vender = "btn_sell"
        @elemento_button_vender_acoes = "bt_topfive_widget_sell"
        @elemento_button_exibir_informacoes = "ib_calc_start_buy"
        @elemento_button_confirmar = "button1"
        @elemento_button_cancelar = "button2"
        @elemento_button_consulta = "bt_consult"
        @elemento_button_consultar = "btn_consult_report"
        @elemento_button_consuta_ativo = "btn_query_exchange_assets"
        @elemento_buttonCondultaUtilitario = "btn_consult"
        @elemento_button_legenda_ativo = "iv_arrow"
        @elemento_button_incluir_ativo = "btn_widget_stock"
        @elemento_button_reflesh = "btn_refresh_balance_values"
        @elemento_button_alterarSaldoAnalitico = "btn_change_balance_type"
        @elemento_button_registrar = "btn_register"

        #mapeamento filtro
        @elemento_filtro_compraAcoes = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[1]"
        @elemento_filtro_agendamentos = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[2]"
        @elemento_filtro_stopProgramado = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.support.v4.view.ViewPager/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TabHost/android.widget.LinearLayout/android.widget.TabWidget/android.widget.LinearLayout[3]"


        #mapenamento inputs
        @elemento_ativo_input = "et_active"
        @elemento_ativo_utilitario_input = "et_widget_stock"
        @elemento_ajuste_input = "sw_wallet"
        @elemento_valorAjuste_input = "ed_adjust"
        @elemento_quantidade_input = "et_quantity"
        @elemento_preco_limite_input = "ed_price_limit"
        @elemento_senha_cartao_input = "ed_card_password"
        @elemento_preco_disparo_input = "ed_shooting_price" 
        @elemento_preco_disparo_ganho_input = "ed_shooting_price_won"
        @elemento_preco_disparo_perca_input = "ed_shooting_price_lost"
        @elemento_preco_limite_ganho_input = "ed_price_limit_won"
        @elemento_preco_limite_perca_input ="ed_price_limit_lost"
        @elemento_preco_limite_stop_input = "ed_limit_price"
        @elemento_preco_inicio_stop_movel_input = "ed_start_stop_mobile"
        @elemento_preco_ajuste_inicial_ibput = "ed_start_adjust_price"
        @elemento_data_limite_input = "ed_date_limit"
        @elemento_data_inicio_input = "tv_start_date"
        @elemento_data_inicial_input = "tv_date_start"
        @elemento_data_final_input = "tv_date_end"
        @elemento_data_fim_input = "tv_end_date"
        @elemento_tipo_operacao_input = "sp_operation_type"
        @elemento_tipoOperacao_compraVenda_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_tipoOperacao_agendamentos_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_tipoOperacao_stopProgramado_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_tipo_situacao_input = "sp_consultorders_situation"
        @elemento_tipoSituacao_incluida_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout"
        @elemento_tipoSituacao_recebida_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout"
        @elemento_tipoSituacao_RecebCancSolicit_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.LinearLayout"
        @elemento_tipoSituacao_pendente_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.LinearLayout"
        @elemento_tipoSituacao_negociada_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[6]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_tipoSituacao_negociadaParcial_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[7]/android.widget.LinearLayout"
        @elemento_tipoSituacao_negocCancSolicit_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[8]/android.widget.LinearLayout"
        @elemento_tipoSituacao_pedente_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout"
        @elemento_tipoSituacao_recusada_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout"
        @elemento_tipoSituacao_atendida_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.LinearLayout"
        @elemento_tipoSituacao_vencida_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.LinearLayout"
        @elemento_tipoSituacao_cancelada_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[6]/android.widget.LinearLayout"
        @elemento_tipoInformes_palavraChave_input = "et_filter_active"
        @elemento_tipoInformes_categoria_input = "sp_list" 
        @elemento_tipoInformesCategoria_analiseEmpresa_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout"
        @elemento_tipoInformesCategoria_carteiraSugerida_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout"
        @elemento_tipoInformesCategoria_diarioMercado_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.LinearLayout"
        @elemento_tipoInformesCategoria_flashMercado_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.LinearLayout"
        @elemento_tipoInformesCategoria_focusAnalise_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[6]/android.widget.LinearLayout"
        @elemento_tipoInformesCategoria_guia_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[7]/android.widget.LinearLayout"
        @elemento_tipoInformesCategoria_rendaFixa_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[8]/android.widget.LinearLayout"
        @elemento_tipoInformesCategoria_setorialAnalise_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[9]/android.widget.LinearLayout"
        @elemento_tipoInformesCategoria_ofertasEncerradas_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[10]/android.widget.LinearLayout"
        @elemento_tipoInformesCategoria_outrosProspectos_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[11]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_tipoInformesAgencia_bovespaEmpresas_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout"
        @elemento_tipoInformesAgencia_bovespaIndices_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[3]/android.widget.LinearLayout"
        @elemento_tipoInformesAgencia_bovespaInstitucional_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.LinearLayout"
        @elemento_tipoInformesAgencia_bovespaOperacoes_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.LinearLayout"
        @elemento_tipoInformesAgencia_cblcNoticias_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[6]/android.widget.LinearLayout"
        @elemento_tipoInformesAgencia_noticiasMercadoBalcao_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[7]/android.widget.LinearLayout"
        @elemento_tipoInformesAgencia_bolsaEletronicaCompras_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[8]/android.widget.LinearLayout"
        @elemento_tipoAtivoBolsa_papel_input = "et_paper_exchange_assets"
        @elemento_tipoAtivoBolsa_empresa_input = "et_company_name_exchange_assets"
        @elemento_tipoAtivoBolsa_tipoMercado_input = "sp_market_type_exchange_assets"
        @elemento_tipoAtivoBolsa_leilaoNaoCotadas_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_tipoAtivoBolsa_vista_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.TextView"
        @elemento_tipoAtivoBolsa_opcoes_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.LinearLayout"
        @elemento_tipoAtivoBolsa_leilao_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.LinearLayout"
        @elemento_tipoAtivoBolsa_fracionario_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[6]/android.widget.LinearLayout"
        @elemento_tipoAtivoBolsa_termo_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[7]/android.widget.LinearLayout"
        @elemento_tipoAtivoBolsa_exerciciOpcoes_input = "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[8]/android.widget.LinearLayout"
    end

    #opções de operações financeiras
    def compra
        find_element(:xpath, @elemento_compra_acoes).click
        sleep(5)
    end

    def venda
        find_element(:xpath, @elemento_venda_acoes).click
        sleep(2)
    end

    def painel
        find_element(:xpath, @elemento_painel_acoes).click
    end

    def consultas 
        find_element(:xpath, @elemento_consultas_acoes).click
    end

    #operacoes ações painel
    def favorito_operacoes
        find_element(:id, @elemento_favoritosOpcoes_acoes).click
    end

    def opcoes_sugeridas
        find_element(:xpath, @elemento_opcaoSugeridas_acoes).click
    end

    def carteira_ago018
        find_element(:xpath, @elemento_carteiraAgo2018_acoes).click
    end

    def carteira_jun018
        find_element(:xpath,  @elemento_carteiraJun2018_acoes).click
    end

    def meus_papeis
        find_element(:xpath, @elemento_meusPapeis_acoes).click
    end

    def favoritos
        find_element(:xpath, @elemento_favoritos_acoes).click
    end

    def carteira1
        find_element(:xpath, @elemento_carteira1_acoes).click
    end

    def carteira3
        find_element(:xpath, @elemento_carteira3_acoes).click
    end

    def test2 
        find_element(:xpath, @elemento_carteira3_acoes).click
    end

    #operacoes ações consultas
    def saldo
        find_element(:id, @elemento_saldo_acoes).click
    end

    def ordem
        find_element(:id, @elemento_ordem_acoes).click
    end

    def ordem_tempoReal
        find_element(:xpath, @elemento_ordemTempoReal_acoes).click
    end

    def ordem_consultaOrdem
        find_element(:xpath, @elemento_consultaOrdem_acoes).click
    end

    def ordem_pedendes
        find_element(:xpath, @elemento_pedentes_acoes).click
    end

    def ordem_finalizadosNoDia
        find_element(:xpath, @elemento_finalizadoNoDia_acoes).click
    end

    def custodia
        find_element(:id, @elemento_custodia_acoes).click
    end

    def custodia_carteria
        find_element(:xpath, @elemento_custodiaCarteria_acoes).click
    end

    def custodia_saldo
        find_element(:xpath, @elemento_custodiaSaldo_acoes).click
    end

    def custodia_movimento
        find_element(:xpath, @elemento_custodiaMovimento_acoes).click
    end

    def financeiro
        find_element(:id, @elemento_financeiro_acoes).click
    end

    def financeiro_previsao
        find_element(:xpath, ).click
    end

    def financeiro_resumoDia
        find_element(:xpath, @elemento_financeiroResumoDia_acoes).click
    end

    def financeiro_movimentacao
        find_element(:xpath, @elemento_financeiroMovimentacao_acoes).click
    end

    def informes
        find_element(:id, @elemento_informes_acoes).click
    end

    def informes_relatorioBB
        find_element(:xpath, @elemento_informesRelatorioBB_acoes).click
    end

    def informes_noticiaBovespa
        find_element(:xpath, @elemento_informesNoticiaBovespa_acoes).click
    end

    def ativo_bolsa
        find_element(:id, @elemento_ativoBolsa_acoes).click
    end

    def utilitarios
        find_element(:xpath, @elemento_utilitários_acoes).click
    end

    def utilitarios_ultima_atualizacoes_ordens
        find_element(:xpath, @elemento_utilitários_ultimaAtualizacoesOrdens_acoes).click
    end

    def utilitarios_cinco_melhores_ordens
        find_element(:xpath, @elemento_utilitários_cincoMelhores_acoes).click
    end

    def utilitarios_volume_corretora_ordens
        find_element(:xpath, @elemento_utilitários_volumeCorretora_acoes).click
    end

    def utilitarios_ultimos_negocios_ordens
        find_element(:xpath, @elemento_utilitários_ultimosNegocios_acoes).click
    end

    def utilitarios_alertas_precos_ordens
        find_element(:xpath, @elemento_utilitários_alertasPrecos_acoes).click
    end

    #operações ações compra
    def compra_start 
        find_element(:xpath, @elemento_compra_start).click
    end

    def compra_stop
        find_element(:xpath, @elemento_compra_stop_programado).click
    end

    def compra_normal
        find_element(:xpath, @elemento_compra_normal).click
    end

    #operacoes ações venda
    def venda_movel
        find_element(:xpath, @elemento_venda_movel).click
    end

    def venda_normal
        find_element(:xpath, @elemento_venda_normal).click
    end

    def venda_simutaneo
        find_element(:xpath, @elemento_venda_simutaneo).click 
    end

    def venda_stop
        find_element(:xpath, @elemento_venda_stop).click
    end

    #inputs
    def informar_ativo(info_ativo)
        find_element(:id, @elemento_ativo_input).send_keys info_ativo
    end

    def informar_ativo_utilitario(info_ativo_utilitario)
        find_element(:id, @elemento_ativo_utilitario_input).send_keys info_ativo_utilitario
    end

    def ajuste
        find_element(:id,  @elemento_ajuste_input).click
    end

    def informar_valorAjuste(info_valor)
        find_element(:id, @elemento_valorAjuste_input).send_keys info_valor
    end

    def infor_quantidade(inf_quantidade)
        find_element(:id, @elemento_quantidade_input).send_keys inf_quantidade
    end

    def informar_preco_limite(info_precoLimite)
        find_element(:id, @elemento_preco_limite_input).send_keys info_precoLimite
    end

    def preco_disparo(info_precoDisparo) 
        find_element(:id, @elemento_preco_disparo_input).send_keys info_precoDisparo
    end

    def preco_disparoGanho(info_precoDisparoGanho) 
        find_element(:id, @elemento_preco_disparo_ganho_input).send_keys info_precoDisparoGanho
    end

    def preco_limite_stop(info_precoLimiteStop)
        find_element(:id, @elemento_preco_limite_stop_input).send_keys info_precoLimiteStop
    end

    def preco_inicio_stop_movel(info_precoInicioStop)
        find_element(:id, @elemento_preco_inicio_stop_movel_input).send_keys info_precoInicioStop
    end

    def preco_ajuste_inicial(info_precoAjusteInicial)
        find_element(:id, @elemento_preco_ajuste_inicial_ibput).send_keys info_precoAjusteInicial
    end

    def preco_disparo_perca(info_precoDisparoPerca)
        find_element(:id, @elemento_preco_disparo_perca_input).send_keys info_precoDisparoPerca
    end

    def preco_limite_ganho(info_precoLimiteGanho)
        find_element(:id, @elemento_preco_limite_ganho_input).send_keys info_precoLimiteGanho
    end

    def preco_limite_perca(info_precoLimitePerca)
        find_element(:id, @elemento_preco_limite_perca_input).send_keys info_precoLimitePerca
    end

    def data_limite(info_data_limite)
        find_element(:id, @elemento_data_limite_input).send_keys info_data_limite
    end

    def data_inicio(info_data_inicio)
        find_element(:id, @elemento_data_inicio_input).send_keys info_data_inicio
    end

    def data_inicial(info_data_inicial)
        find_element(:id, @elemento_data_inicial_input).send_keys info_data_inicial
    end

    def data_final(info_data_final)
        find_element(:id, @elemento_data_final_input).send_keys info_data_final
    end

    def data_fim(info_data_fim)
        find_element(:id, @elemento_data_fim_input).send_keys info_data_fim
    end

    def informar_senha(info_senha)
        find_element(:id, @elemento_senha_cartao_input).click
        find_element(:id, @elemento_senha_cartao_input).send_keys info_senha
    end

    def informar_palavraChave(info_palavraChave)
        find_element(:id, @elemento_tipoInformes_palavraChave_input).send_keys info_palavraChave
    end

    def informar_papel(info_papel)
        find_element(:id, @elemento_tipoAtivoBolsa_papel_input).send_keys info_papel
    end

    def informar_empresa(info_empresa)
        find_element(:id, @elemento_tipoAtivoBolsa_empresa_input).send_keys info_empresa
    end

    #Botões
    def alterar_saldo_analitico
        find_element(:id, @elemento_button_alterarSaldoAnalitico).click
    end

    def atualizar
        find_element(:id, @elemento_button_reflesh).click
    end

    def cancelar
        find_element(:id, @elemento_button_cancelar).click
    end

    def comprar 
        find_element(:id, @elemento_button_comprar).click
    end

    def comprar_acoes_utilitarios 
        find_element(:id, @elemento_button_comprar_acoes).click
    end
    
    def confirmar
        find_element(:id, @elemento_button_confirmar).click
    end

    def consulta
        find_element(:id,  @elemento_button_consulta).click
    end

    def consultar 
        find_element(:id,  @elemento_button_consultar).click
    end

    def consulta_ativo
        find_element(:id, @elemento_button_consuta_ativo).click
    end

    def consulta_utilitario
        find_element(:id, @elemento_buttonCondultaUtilitario).click
    end

    def exibir_informacoes
        find_element(:id, @elemento_button_exibir_informacoes).click
    end

    def incluir_ativo 
        find_element(:id, @elemento_button_incluir_ativo).click
    end

    def legenda_ativo
        find_element(:id, @elemento_button_legenda_ativo).click
    end

    def registrar
        find_element(:id, @elemento_button_registrar).click
    end

    def vender 
        find_element(:id, @elemento_button_vender).click
    end

    def vender_acoes_utilitarios 
        find_element(:id, @elemento_button_vender_acoes).click
    end

    #filtros
    def filtro_agendamentos
        find_element(:xpath, @elemento_filtro_agendamentos).click
    end

    def filtro_compraAcoes
        find_element(:xpath, @elemento_filtro_compraAcoes).click
    end

    def filtro_stopProgramado 
        find_element(:xpath, @elemento_filtro_stopProgramado).click
    end

    #iterações
    def tipo_operacao(info_tipoOperacao)
        #Consulta ordens operacão

        info_tipo_operacao = info_tipoOperacao[0]
        if info_tipo_operacao != 'Todos' and info_tipo_operacao[0] != nil
            find_element(:id, @elemento_tipo_operacao_input).click
            if info_tipo_operacao == "Compra e Venda de Ações"
                find_element(:xpath, @elemento_tipoOperacao_compraVenda_input).click
            elsif info_tipo_operacao == "Agendamentos"
                find_element(:xpath, @elemento_tipoOperacao_agendamentos_input).click
            else
                find_element(:xpath,@elemento_tipoOperacao_stopProgramado_input).click
            end
        end
    end

    def tipo_situacao(info_tipo_situacao)
        #consulta ordens situação

        info_operacao = info_tipo_situacao[0]
        tipo_situacao = info_tipo_situacao[1]

        if info_operacao != nil and info_operacao != 'Todos'
            find_element(:id, @elemento_tipo_situacao_input).click
            
            if info_operacao == "Compra e Venda de Ações"
                if tipo_situacao == "Incluída"
                    find_element(:xpath, @elemento_tipoSituacao_incluida_input).click
                elsif tipo_situacao == "Recebida"
                    find_element(:xpath,  @elemento_tipoSituacao_recebida_input).click
                elsif tipo_situacao == "Receb -canc. solicit."
                    find_element(:xpath, @elemento_tipoSituacao_RecebCancSolicit_input).click
                elsif  tipo_situacao == "Pendente"
                    find_element(:xpath, @elemento_tipoSituacao_pendente_input).click
                elsif tipo_situacao == "Negociada"
                    find_element(:xpath, @elemento_tipoSituacao_negociada_input).click
                elsif tipo_situacao == "Nogociada Parcial"
                    find_element(:xpath, @elemento_tipoSituacao_negociadaParcial_input).click
                elsif tipo_situacao == "Negoc -canc. solicit."
                    find_element(:xpath, @elemento_tipoSituacao_negocCancSolicit_input).click
                end

            elsif info_operacao == "Agendamentos" 
                if tipo_situacao == 'Pendente'
                    find_element(:xpath, @elemento_tipoSituacao_pedente_input).click
                elsif tipo_situacao == "Recusada"
                    find_element(:xpath, @elemento_tipoSituacao_recusada_input).click
                elsif tipo_situacao == "Atendida"
                    find_element(:xpath, @elemento_tipoSituacao_atendida_input).click
                elsif tipo_situacao == "Vencida"
                    find_element(:path, @elemento_tipoSituacao_vencida_input).click
                else
                    find_element(:xpath, @elemento_tipoSituacao_cancelada_input).click
                end

            else
                if tipo_situacao == 'Pendente'
                    find_element(:xpath, @elemento_tipoSituacao_pedente_input).click
                elsif tipo_situacao == "Recusada"
                    find_element(:xpath, @elemento_tipoSituacao_recusada_input).click
                elsif tipo_situacao == "Atendida"
                    find_element(:xpath, @elemento_tipoSituacao_atendida_input).click
                elsif tipo_situacao == "Vencida"
                    find_element(:path, @elemento_tipoSituacao_vencida_input).click
                else
                    find_element(:xpath, @elemento_tipoSituacao_cancelada_input).click
                end
            end
        end
    end

    def categoria(tipo_categoria)
        #tipo de categoria - Informes Relatório BB

        if tipo_categoria != nil and tipo_categoria != "Todos"
            find_element(:id, @elemento_tipoInformes_categoria_input).click

            if tipo_categoria == "Análise Empresa"
                find_element(:xpath, @elemento_tipoInformesCategoria_analiseEmpresa_input).click
            elsif tipo_categoria == "Carteira Sugerida"
                find_element(:xpath, @elemento_tipoInformesCategoria_carteiraSugerida_input).click
            elsif tipo_categoria == "Diario de Mercado"
                find_element(:xpath, @elemento_tipoInformesCategoria_diarioMercado_input).click
            elsif tipo_categoria == "Flash de Mercado"
                find_element(:xpath, @elemento_tipoInformesCategoria_flashMercado_input).click
            elsif tipo_categoria == "Focus (Análise)"
                find_element(:xpath, @elemento_tipoInformesCategoria_focusAnalise_input).click
            elsif tipo_categoria == "Guia"
                find_element(:xpath, @elemento_tipoInformesCategoria_guia_input).click
            elsif tipo_categoria == "Renda Fixa"
                find_element(:xpath, @elemento_tipoInformesCategoria_rendaFixa_input).click
            elsif tipo_categoria == "Setorial (Análise)"
                find_element(:xpath, @elemento_tipoInformesCategoria_setorialAnalise_input).click
            elsif tipo_categoria == "Ofertas Encerradas"
                find_element(:xpath, @elemento_tipoInformesCategoria_ofertasEncerradas_input).click
            elsif tipo_categoria == "Outros Prospectos"
                find_element(:xpath, @elemento_tipoInformesCategoria_outrosProspectos_input).click
            end
        end
    end

    def agencia(tipo_agencia)
        #tipo de Agência Notícia - Informes Notícia Bovespa

        if tipo_agencia != nil and tipo_agencia != "Todos"
            find_element(:id, @elemento_tipoInformes_categoria_input).click

            if tipo_agencia == "BOVESPA - Empresas"
                find_element(:xpath, @elemento_tipoInformesAgencia_bovespaEmpresas_input).click
            elsif tipo_agencia == "BOVESPA - Índice"
                find_element(:xpath, @elemento_tipoInformesAgencia_bovespaIndices_input).click
            elsif tipo_agencia == "BOVESPA - Institucional"
                find_element(:xpath, @elemento_tipoInformesAgencia_bovespaInstitucional_input).click
            elsif tipo_agencia == "BOVESPA - Operações"
                find_element(:xpath, @elemento_tipoInformesAgencia_bovespaOperacoes_input).click
            elsif tipo_agencia == "CBLC - Notícias"
                find_element(:xpath, @elemento_tipoInformesAgencia_cblcNoticias_input).click
            elsif tipo_agencia == "Notícias Mercado Balcão"
                find_element(:xpath, @elemento_tipoInformesAgencia_noticiasMercadoBalcao_input).click
            elsif tipo_agencia == "Bolsa Eletrônica de Compras"
                find_element(:xpath, @elemento_tipoInformesAgencia_bolsaEletronicaCompras_input).click
            end
        end
    end 

    def tipo_mercado(info_tipoMercado)
        #Ativo da Bolsa - Tipo de Mercado
        
        if info_tipoMercado != nil and info_tipoMercado != "Todos"
            find_element(:id, @elemento_tipoAtivoBolsa_tipoMercado_input).click

            if info_tipoMercado == "Leilão de não Cotadas"
                find_element(:xpath, @elemento_tipoAtivoBolsa_leilaoNaoCotadas_input).click
            elsif info_tipoMercado == "Vista"
                find_element(:xpath, @elemento_tipoAtivoBolsa_vista_input).click
            elsif info_tipoMercado == "Opções"
                find_element(:xpath, @elemento_tipoAtivoBolsa_opcoes_input).click
            elsif info_tipoMercado == "Leilão"
                find_element(:xpath, @elemento_tipoAtivoBolsa_leilao_input).click
            elsif info_tipoMercado == "Fracionário"
                find_element(:xpath, @elemento_tipoAtivoBolsa_fracionario_input).click
            elsif info_tipoMercado == "Termo"
                find_element(:xpath, @elemento_tipoAtivoBolsa_termo_input).click
            elsif info_tipoMercado == "Exercicio de Opções"
                find_element(:xpath, @elemento_tipoAtivoBolsa_exerciciOpcoes_input).click
            end
        end
    end
        

    def custodia(tipo_custodia)
        #tipo de Custódia - Venda de Ações

        find_element(:id, @elemento_tipo_custodia).click
        if tipo_custodia == 'Investimentos'
            find_element(:xpath, @elemento_tipo_custodia_investimentos).click
        else    
            find_element(:xpath, @elemento_tipo_custodia_contaCorrente).click
        end
    end

    #método interação com os tipos de operações 
    def escolhendo_tipo_operacao_venda(operacao_venda)
        #Venda de Ações
        
        if operacao_venda[0] == 'Móvel'
            venda_movel
            informar_ativo operacao_venda[1]
            infor_quantidade operacao_venda[2]
            preco_disparo operacao_venda[3]
            preco_limite_stop operacao_venda[4]
            preco_inicio_stop_movel operacao_venda[5]
            preco_ajuste_inicial operacao_venda[6]
        elsif operacao_venda[0] == 'Stop'
            venda_stop
            informar_ativo operacao_venda[1]
            infor_quantidade operacao_venda[2]
            preco_disparo operacao_venda[3]
            informar_preco_limite operacao_venda[4]
        elsif operacao_venda[0] == 'Simutâneo'
            venda_simutaneo
            informar_ativo operacao_venda[1]
            infor_quantidade operacao_venda[2]
            preco_disparoGanho operacao_venda[3]
            preco_disparo_perca operacao_venda[4]
            preco_limite_ganho operacao_venda[5]
            preco_limite_perca operacao_venda[6]
        else
            venda_normal
            informar_ativo operacao_venda[1]
            infor_quantidade operacao_venda[2]
            informar_preco_limite operacao_venda[3]
        end

        if operacao_venda[9] != nil
            data_limite operacao_venda[9]
        end
        hide_keyboard
        custodia operacao_venda[7]
        informar_senha operacao_venda[8]
        sleep(2)
    end

    def escolhendo_tipo_operacao_compra(operacao_compra)
        #Compra de Ações
        
        if operacao_compra[0] == 'Start'
            compra_start 
            informar_ativo operacao_compra[1]
            infor_quantidade operacao_compraa[2]
            preco_disparo operacao_compra[3]
            informar_preco_limite operacao_compra[4]
        elsif operacao_compra[0] == 'Stop Programado'
            compra_stop
            informar_ativo operacao_compra[1]
            infor_quantidade operacao_compra[2]
            informar_preco_limite operacao_compra[3]
            preco_disparoGanho operacao_compra[4]
            preco_limite_ganho operacao_compra[5]
            preco_disparo_perca operacao_compra[6]
            preco_limite_perca operacao_compra[7]
            if operacao_compra[8] != nil and operacao_compra[8] == "SIM"
                ajuste
                informar_valorAjuste operacao_compra[9]
            end
        else
            compra_normal
            informar_ativo operacao_compra[1]
            infor_quantidade operacao_compra[2]
            informar_preco_limite operacao_compra[3]
        end
        if operacao_compra[12] != nil
            data_limite operacao_compra[11]
        end
        hide_keyboard
        informar_senha operacao_compra[10]
        sleep(2)
    end

    #método menssagem retorno da operaçãp
    def menssagem
        find_element(:id,  @elemento_mapeando_resposta).text
    end
end
