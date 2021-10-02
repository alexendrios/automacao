class Menu < SitePrism::Page

=begin

    * Script criado por Alexandre Santos - Célula - 386
    * Classe Responsável pela navegação no Sistema MOB2
   
    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular/cel: 61-992861490
    
    By Jan 2018
    
=end

    #Elementos mapeados
    element :menu_omp_os_input, '#menu-omp'
    element :menu_omp_incluir_input, '#menu-omp-incluir > span'
    element :menu_omp_os_autorizar_ad_input, '#menu-omp-autorizar > span'
    element :autorizar_autoridade_determinante_input, '#menu-omp-autorizar-ad'
    element :autorizar_autoridade_superior_input, '#menu-omp-autorizar-as'
    
    #navegação no sistema - menu -
    def menu_omp_os
        menu_omp_os_input.click
    end

    def menu_omp_incluir
        menu_omp_incluir_input.click
    end
    
    def consultar_omp_os
       find(:xpath, '/html/body/div[1]/application/pf-layout/div/pf-sidebar/div/div/div[1]/nav/pf-menu/ul/ng-repeat[4]/pf-menu-item/li/pf-menu/ul/ng-repeat[2]/pf-menu-item/li/a/span').click
    end

    def autorizar_omp_os
        menu_omp_os_autorizar_ad_input.click
    end

    def autorizar_autor_deter
        autorizar_autoridade_determinante_input.click
    end

    def autorizar_autoridade_superior
        autorizar_autoridade_superior_input.click
    end
end