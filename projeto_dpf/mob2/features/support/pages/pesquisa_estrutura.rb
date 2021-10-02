class Pesquisar < SitePrism::Page
    
    def initialize
        @estrutura = Formulario.new
    end

    element :numero_ordem_input, '#numeroOrdem_input'
    element :pesquisar_input, '.btn-primary'
    element :justificativa_input, '#justificativa_input'
    element :autorizar_input, '#btn3'
    element :autorizar_ad_input, '#btn2'
    element :autorizacao_analisada_assessor_sim_input, 'div.radio:nth-child(1) > label:nth-child(1)'
    element :autorizacao_analisada_assessor_nao_input, 'div.radio:nth-child(2) > label:nth-child(1)'
    element :justificativa_necessidade_transporte_input, '#justificativaDias_input'
    
    def consultar_ordem(pesquisa)
        numero_ordem_input.click.set pesquisa
        pesquisar_input.click 
    end
    
    
    def pequisar_omp_os(ordem, metodo)
        if metodo == 'Autoridade Determinante'
            @j = 7
        else
            @j = 9
        end
        @iteracao = 0 
        tamanho =  @estrutura.tabela.size
        dados =  @estrutura.tabela
        while @iteracao < tamanho
            arugumento = dados[@iteracao].text
            if arugumento == ordem
                dados[@iteracao + @j].click
                break
            end
            @iteracao +=1
        end
    end

    def justificativa(argumento)
        justificativa_input.click.set argumento
    end

    def justificativa_necessidade_transporte(argumento_just)
        justificativa_necessidade_transporte_input.click.set argumento_just
    end

    def autorizar 
        autorizar_input.click
    end

    def autorizar_ad 
        autorizar_ad_input.click
    end

    def autorizacao_analisada_assessor(condicao)
        if condicao.upcase == 'SIM'
            autorizacao_analisada_assessor_sim_input.click
        else
            autorizacao_analisada_assessor_nao_input.click
        end
    end
end

