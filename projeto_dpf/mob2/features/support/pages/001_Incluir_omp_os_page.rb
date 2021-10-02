class IncluirOmpOs < SitePrism::Page
 
=begin

    * Classe que utiliza os métodos e elementos da classe formulário do sistema MOB2 - DPF
    * Script desenvolvido por Alexandre Pereira Santos - Célula 386
    * Classe responsáveis onde seus objetos realizam a interação com o furmulárop em uma aplicação web
    * Métodos principais:
        1 - preencher_formulario 
        2 - definir_integrantes
        3 - enviar_formulario
   
    
    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490

    By Jan 2018

=end 
    
    def initialize
        @menu = Menu.new
        @formulario = Formulario.new
        @tools = Tools.new
        @data_analise = Data_verificacao.new
    end

=begin
        * Método a seguir é responsável para o preenchimento do formulário
        * Foi utilizado a captação de dados através de um array para melhor Logística das Informações
=end
    
    def preencher_formulario parametros

        #Componentes responsável pela navegação no menu
        @menu.menu_omp_os
        @menu.menu_omp_incluir

#Dados da Missão   

        #setup Ordem da Missão
        ordem = parametros[0].upcase
        numero_inquerito = parametros[6]
        if ordem == 'MISSÃO POLICIAL'
            @formulario.ordem_missao_policial
            @formulario.inquerito numero_inquerito
        else
            @formulario.ordem_servico
        end

        missao = parametros[1].upcase
        if missao == 'COMUM'
            @formulario.missao_comum
        else
            @formulario.missao_sigilosa
        end

        #setup destino
        tipo_destino = parametros[2]
        pais_destino = parametros[3]

        if pais_destino == nil
            pais_destino = 'Brasil'
        end

        uf_destino = parametros[4]
        cidade_destino = parametros[5]
        @formulario.tipo_destino tipo_destino,  pais_destino,  uf_destino, cidade_destino

        #setup área atuação
        area = parametros[7].upcase
        @formulario.area_atuacao area

        #setup unidade do inquérito policial
        unidade = parametros[8].upcase
        @formulario.unidade_inquerito_policial unidade

        #setup tipo de missão
        tipo = parametros[9]
        @formulario.tipo_missao tipo
       
        #setup data
        valor_inicio = parametros[10]
        valor_fim = parametros[11]

        @formulario.data_inicio valor_inicio
        #@formulario.data_fim valor_fim

        #condicao_data_fim = @formulario.data_fim_input.value
        #if condicao_data_fim == ''
            @formulario.duracao_input.set parametros[12]
        #end 

        #setup local apresentação e informações gerais
        @formulario.local_apresentacao_input.set parametros[13]
        @formulario.descricao_missao_input.set parametros[14]

        #setup Órgãos parceiros
        if parametros[15].upcase == 'SIM'
           list_orgao = parametros[16]
           @formulario.orgaos_parceiros list_orgao
        end

        @formulario.dados_conhecidos_input.set parametros[17]
        @formulario.recomendacoes_input.set parametros[18]

#Diárias e Transporte

        #setup custo das diárias
        if tipo_destino == 'Estadual' or tipo_destino == 'Interestadual' or tipo_destino == 'Internacional'
           if parametros[19].downcase == 'unidades gestoras' and parametros[21] == 'sem ressarcimento'
               @formulario.pagamento_sem_ressacimento parametros[20]
               @custo_diaria = true
           elsif parametros[19].downcase == 'unidades gestoras' and parametros[21] == 'com ressarcimento'
               @formulario.pagamento_com_ressacimento parametros[20], parametros[22]
               @custo_diaria = true
           elsif  parametros[19].downcase == 'outro órgão'
               @formulario.pagamento_outro_orgao parametros[20]
               @custo_diaria = true
           else
               @formulario.custo_diaria_nao_ha_input.click 
               @custo_diaria= false
            end
        else
            @formulario.custo_diaria_nao_ha_input.click
            @custo_diaria = false
        end

        #setup Transporte 
        @formulario.tipo_transporte parametros[23], parametros[24]
        @formulario.observacao_transporte_diaria_input.click.set parametros[25]

        #setup Custo das Passagens
        @custo_transporte = false
        if parametros[24] == 'Comercial'
            if parametros[26].downcase == 'unidades gestoras' and parametros[28].downcase == 'sem ressarcimento'
                @formulario.custo_passagem_paga parametros[27]
                @custo_transporte = true
            elsif parametros[26].downcase == 'unidades gestoras' and parametros[28].downcase == 'com ressarcimento'
                @formulario.custo_passagem_paga_ressacimento parametros[27], parametros[29]
                @custo_transporte = true
            else
                @formulario.custo_passagem_paga_outro_orgao parametros[27]
                @custo_transporte = true
            end
        end

        #setup Autoridade Determinante
        if parametros[30].upcase == 'SIM'
            @formulario.selecionar_autoridade parametros[31]
        end

        #setup Equipamento
        @formulario.armamento_input.click.set parametros[32]
        @formulario.telecomunicacao_input.click.set parametros[33]
        @formulario.vestuario_input.click.set parametros[34]
        @formulario.outro_equipamentos_input.click.set parametros[35]

=begin 

        Os dados referente ao:
        * setup data - retorno de valores 
        -> Serão utilizados no método definir_integrantes com o objetivo:
        * validar as datas, sendo Feriado/Final de semana
=end
        #setup data - retorno de valores 
        @data_inicio = @formulario.data_inicio_input.value
        @data_fim = @formulario.data_fim_input.value

        #setup Anexo de arquivo
        if parametros[36].upcase == 'SIM'
            @formulario.anexar_arquivo parametros[37]
        end
    
         #setup centro de custo
         if @custo_diaria or @custo_transporte
            @formulario.centro_custo  parametros[38], parametros[39]
         end
       
    end

=begin
        * Método a seguir é responsável para o Definir Integrantes
        * Foi utilizado a captação de dados através de um array para melhor Logística das Informações
=end
    def definir_integrantes info_integrantes

#Definir Integrantes 

        @formulario.definir_integrantes
        dias = @formulario.duracao_input.value

        #setup integrantes
        info_integrantes[0].each do |servidor|
            @formulario.incluir_servidor servidor, dias
        end
        
        #setup chefe da equipe
        if info_integrantes[1] != nil and info_integrantes[1].upcase == 'SIM'
            @formulario.equipe info_integrantes[2]
        end
        
#Classificação da Missão
        if info_integrantes[3] != nil
            #setup Interesse e Unidade Interessada
            @formulario.interesse info_integrantes[3], info_integrantes[4]

            #setup Valor da Diária, Data da Apresentação e Horário de Apresentação
            @formulario.info_valores_diarias info_integrantes[5], info_integrantes[6], info_integrantes[7]

            #setup Demais Informações - Radio - Button
            informacoes = info_integrantes[8] 
            
            #deslocamento
            if informacoes[0].upcase == 'SIM'
                @formulario.deslocamento_sigilo_sim_input.click
            else
                @formulario.deslocamento_sigilo_nao_input.click
            end
       
            #curso
            if informacoes[1].upcase == 'SIM'
                 @formulario.curso_sim_input.click
            else
                 @formulario.curso_nao_input.click
            end

            #mais dez integrantes
            if informacoes[2].upcase == 'SIM'
                @formulario.mais_dez_integrantes_evento_sim_input.click
            else
                @formulario.mais_dez_integrantes_evento_nao_input.click
            end

=begin 
            * Configurando o fluxo quando a data de início e a data fim da missão
            inicia ou termina em um feriado ou final de semana
            - Será necessário realizar um verificação das datas, pois essa condição sendo verdadeira
            o formulário apresentará um input para informar uma justificativa
=end           
               
            if  @data_analise.data_final_semana  @data_inicio or @data_analise.data_feriado @data_inicio or @data_analise.data_final_semana  @data_fim or @data_analise.data_feriado @data_fim
                 @formulario.justificativa_inicio_termino_feriado_fim_semana_input.click.set  info_integrantes[9]
            end
        end
    end 

=begin
        * Os Métodos a seguir é responsável para as seguintes funções:
       1 - Voltar;
       2 - Cancelar;
       3 - Salvar;
       4 - Enviar
       5 - Definir Integrantes
=end

    def voltar_tela
        @formulario.voltar
    end

    def cancelar_formulario
        @formulario.cancelar
    end

    def salvar_formulario
        @formulario.salvar
    end

    def enviar_formulario(nome_arquivo)
       @formulario.enviar

       #setup dos dados
       dados_gravados = @formulario.numero_requisicao_input.text
       @tools.gravar_dados nome_arquivo, dados_gravados
       puts  dados_gravados
    end

    def tela_definir_integrantes
        @formulario.definir_integrantes
    end
end