class FuncionalidadeMantis < SitePrism::Page
    
    #Mapeando botão logout
    def sair
        click_link('Sair')
    end 

    #Selecione o Projeto    
    def projeto        
        find(:css, 'tr > td.login-info-right > form > select > option:nth-child(3)').click        
        #click_button('Mudar')        
    end
        
    #Selecione o Link "Ver Casos"
    def navega_caso
        click_link('Ver Casos')
    end
  
    #Selecione "Resumo"
    def navega_resumo
        visit 'http://issues.corp.stefanini.com/summary_page.php'  
    end

    #Filtro de Sprints e os Tipos de Bugs => Bugs e Bugs Cliente
    def filtro_sprint

        #Contador da Tela de Sprint
        x = 11
        
        #For
        (12..16).each do |sprints|

            #Alternando entre páginas
            visit "http://10.61.79.106/minerhome/sprint#{x}.html" 
            visit 'http://issues.corp.stefanini.com/view_all_bug_page.php'
        
            #Filtro do Projeto
            find(:css, '#custom_field_43_filter').click
            find(:css, "#custom_field_43_filter_target > select > option:nth-child(#{sprints})").click
            
            #Bugs
            find(:id, 'show_category_filter').click
            find(:css, '#show_category_filter_target > select > option:nth-child(2)').click            
            click_button 'Aplicar Filtro'
            sleep(3)
            
            #Bugs do Cliente
            find(:id, 'show_category_filter').click
            find(:css, '#show_category_filter_target > select > option:nth-child(3)').click            
            click_button 'Aplicar Filtro'
            sleep(3)
            
            #Contador da Tela
            x += 1
        end       
    end    
   
    #Selecione Resumo => "Categoria"
    def navega_categoria
        click_link('Por categoria')
    end

    #Selecione Resumo => "Resumo Avançado"
    def navega_resumo_avancado
        click_link('Resumo Avançado')
    end

    #Método descer a página
    def down(x)
        case 
            when x = 'navega_visao'
                find('td.menu:nth-child(1) > a:nth-child(1)').send_keys(:down)
            
            when x = 'navega_status'
                find('body > div:nth-child(6) > span:nth-child(2) > a:nth-child(1)').send_keys(:down)
            
            when x = 'navega_prioridade'
                find('body > div:nth-child(6) > span:nth-child(3) > a:nth-child(1)').send_keys(:down)
            
            when x = 'navega_seriedade'
                find('span.bracket-link:nth-child(4) > a:nth-child(1)').send_keys(:down)
            
            when x = 'navega_categoria'
                find('span.bracket-link:nth-child(5) > a:nth-child(1)').send_keys(:down)
            
            when x = 'navega_resolucao'
                find('span.bracket-link:nth-child(6) > a:nth-child(1)').send_keys(:down)
            
            when x = 'navega_resumo_avancado'
                find('span.bracket-link:nth-child(3) > a:nth-child(1)').send_keys(:down)
            
            when x = 'navega_resumo'
                find('body > div:nth-child(5) > span:nth-child(2) > a:nth-child(1)').send_keys(:down)
        end
    end
end