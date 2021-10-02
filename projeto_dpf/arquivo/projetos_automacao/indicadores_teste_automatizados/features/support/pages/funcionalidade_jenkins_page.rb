class FuncionalidadeJenkins < SitePrism::Page
    
    #mapeando elementos
    elements :tabela, 'tr > td'

    #Método navegar nos paineis
    
    def operacao_painel
        find('.pane-header > div:nth-child(2) > a:nth-child(1)').click
    end

    def escolhe_opcao
        tabela[2].click
    end
    
     def features
      find('div.task:nth-child(9) > a:nth-child(2)').click
    end 

    def tags
        click_link('Tags')
    end

    def steps
        click_link('Steps')
    end

    def trends
        click_link('Trends')
    end

    def failures
        click_link('Failures')
    end

    #Método descer a página
    def operacao_down
        find('.pane-header > div:nth-child(2) > a:nth-child(1)').send_keys(:down)
    end
    def features_down
        find('li.active:nth-child(4) > a:nth-child(1)').send_keys(:down)
    end

    def tags_down
        find('.active > a:nth-child(1)').send_keys(:down)
    end

    def steps_down
        find('.active > a:nth-child(1)').send_keys(:down)
    end

    def trends_down
        find('.nav > li:nth-child(7) > a:nth-child(1)').send_keys(:down)
    end

    def failures_down
        find('.nav > li:nth-child(8) > a:nth-child(1)').send_keys(:down)
    end

    def logouf
        click_link('Jenkins')
        click_link('sair')
    end
end