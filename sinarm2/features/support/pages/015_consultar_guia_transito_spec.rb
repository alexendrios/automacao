class GuiaTransitoPage < PageHelper

    element :nr_guia_transito_input, '#formRequerimento\:numeroRequerimento'
    element :btn_pesquisar_guia_transito, '#formRequerimento\:btnPesquisarRequerimento'
    # element :

    def acessar_consulta_guia_transito
        acessar_home
        menu_consultar_guia_transito
    end

end