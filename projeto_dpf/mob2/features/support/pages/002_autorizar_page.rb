class Autorizar < SitePrism::Page

    def initialize
        #setup para utilizar as informações de acordo com as classes carregadas
        @menu = Menu.new
        @pesquisar = Pesquisar.new
        @tools = Tools.new
    end

    #navegando no menu
    def navegando_menu(operacao)
        @menu.menu_omp_os

        if operacao == 'Consultar OMP/OS'
            @menu.consultar_omp_os
        elsif operacao == 'Autorizar OMP/OS = Autoridade Determinante'
            @menu.autorizar_omp_os 
            @menu.autorizar_autor_deter
        elsif operacao == 'Autorizar OMP/OS = Autoridade Superior'
            @menu.autorizar_omp_os 
            @menu.autorizar_autoridade_superior
        end
    end
    
    #Leitura do arquivo .txt referente a OMP?OS -> Gerada
    def recuperar_dados(arquivo)
        @tools.leitura arquivo
    end

    #método que realiza a consulta de uma ordem OMP/OS
    def consultar_ordem_omp_os(info_dados)
        navegando_menu 'Consultar OMP/OS'
        @pesquisar.consultar_ordem info_dados[0]
    end

    #método para a realização da autorização pela Autoridade Determinante
    def autorizar_autoridade_determinante(info_dados)
        navegando_menu 'Autorizar OMP/OS = Autoridade Determinante' 
        metodo = 'Autoridade Determinante'
        @pesquisar.pequisar_omp_os info_dados[0], metodo
        @pesquisar.justificativa info_dados[1]
        if info_dados[3] != nil
            @pesquisar.justificativa_necessidade_transporte info_dados[3]
        end
        @pesquisar.autorizar
    end

    #método para a realização da autorização pela Autoridade Superior
    def autorizar_autoridade_superior(info_dados)
        metodo = 'Autoridade Superior'
        navegando_menu 'Autorizar OMP/OS = Autoridade Superior'
        @pesquisar.autorizacao_analisada_assessor info_dados[2]
        @pesquisar.pequisar_omp_os info_dados[0], metodo
        @pesquisar.autorizar
    end
end