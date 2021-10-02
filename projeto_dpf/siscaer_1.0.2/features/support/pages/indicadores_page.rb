class Indicadores < SitePrism::Page

    #mapeando inputs
    element :nome_input, '#nomeCredenciado'
    element :auto_complet, '.ui-autocomplete-items'
    element :aeroporto_vinculado_input,'#aeroportoVinculado'
    element :data_inicio_input, '#dataInicio'
    element :data_fim_input, '#dataFim'
    element :situacao_input, '#situacao'

    #mapeando botão
    element :pesquisar_button, '#pesquisar'

    #Métodos Navegação
    def indicadores
        find(:xpath, '/html/body/app-root/div/div/nav/pf-menu-navbar/ul/li[3]/a').click
    end

    def restricoes_pedentes
        find(:xpath, '/html/body/app-root/div/div/nav/pf-menu-navbar/ul/li[3]/ul/li[1]/a/span').click
    end

    def resticoes_homonios
        find(:xpath, '/html/body/app-root/div/div/nav/pf-menu-navbar/ul/li[3]/ul/li[2]/a/span').click
    end

    #Método Açãp Botões
    def pesquisar
        pesquisar_button.click
    end



end