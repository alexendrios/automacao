class Formulario < SitePrism::Page

=begin

    * Classe contendo o mapeamento do formulário do sistema MOB2 - DPF
    * Script desenvolvido por Alexandre Pereira Santos - Célula 386
    
    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490
        
    By Jan 2018

=end    
    

    #Elementos: Inputs Mapeados - Dados da Missão
    element :ordem_input_missao_policial, 'body > div.wrapper.ng-scope > application > pf-layout > div > div.content-layer.m-b-1 > ng-transclude > div > dados-ordem-cadastrar-ordem > div > div > div > div.tab-pane.ng-scope.active > div > div > div > div:nth-child(2) > div:nth-child(1) > pf-radio > pf-input-decorator > div > div > div > ng-transclude > div:nth-child(1) > label'
    element :ordem_input_servico, 'body > div.wrapper.ng-scope > application > pf-layout > div > div.content-layer.m-b-1 > ng-transclude > div > dados-ordem-cadastrar-ordem > div > div > div > div.tab-pane.ng-scope.active > div > div > div > div:nth-child(2) > div:nth-child(1) > pf-radio > pf-input-decorator > div > div > div > ng-transclude > div:nth-child(2) > label'
    element :servico_comum_input, 'body > div.wrapper.ng-scope > application > pf-layout > div > div.content-layer.m-b-1 > ng-transclude > div > dados-ordem-cadastrar-ordem > div > div > div > div.tab-pane.ng-scope.active > div > div > div > div:nth-child(2) > div:nth-child(2) > pf-radio > pf-input-decorator > div > div > div > ng-transclude > div:nth-child(1) > label'
    element :servico_sigilosa_input, 'body > div.wrapper.ng-scope > application > pf-layout > div > div.content-layer.m-b-1 > ng-transclude > div > dados-ordem-cadastrar-ordem > div > div > div > div.tab-pane.ng-scope.active > div > div > div > div:nth-child(2) > div:nth-child(2) > pf-radio > pf-input-decorator > div > div > div > ng-transclude > div:nth-child(2) > label'
    element :tipo_destino_input, '#tipoDeDestino_input'
    element :destino_uf_input, '#destinoUF_input'
    element :pais_input, '#pais_input'
    element :num_inquerito_policial_input, '#numInqueritoPolicial_input'
    element :area_atuacao_input, '#areaAtuacao_input'
    element :unidade_inquerito_input, '#unidadeInquerito_input > div:nth-child(1)'
    element :tipo_missao_input, '#tipoMissao_input'
    element :data_inicio_input, '#dataInicio_input'
    element :data_fim_input, '#dataFim_input'
    element :cidade_uf_input, '#cidadeUF_input'
    element :local_apresentacao_input, '#localApresentacao_input'
    element :descricao_missao_input, '#descMissao_input'
    element :orgaos_parceiros_input, 'div.row:nth-child(9) > div:nth-child(1) > label:nth-child(1) > button:nth-child(1)'
    element :dados_conhecidos_input, '#dadosConhecidos_input'
    element :recomendacoes_input, '#recomendacoes_input'
    element :undefined_input, '#undefined_input'
    element :centro_custo_input, '#centroCusto_input'
    
   
    #Elementos Inputs somente leitura - usado para determinar um tipo de ação - Dados da Missão
    element :duracao_input, '#duracao_input'
    element :qtd_diarias_input, '#qtdDiarias_input'

    #Elementos mapeados Diária e Transporte
    element :custo_diaria_nao_ha_input, '#custoDiarias > cp-transportes-diarias > div:nth-child(3) > div > label'
    element :custo_diaria_pago_sem_ressacimento_input,'#custoDiarias > cp-transportes-diarias > div:nth-child(4) > div.col-sm-2.radio > label'
    element :custo_diaria_pago_com_ressacimento_input, '#custoDiarias > cp-transportes-diarias > div:nth-child(5) > div.col-sm-2.radio > label'
    element :custo_diaria_pago_outo_orgao_input, '#custoDiarias > cp-transportes-diarias > div:nth-child(6) > div.col-sm-2.radio > label'
    element :pagamento_transporte_input, '#pagasmentoTransporte_input'
    element :unidade_pagadora_transporte_input, '#unidadePagadoraTransporte_input'
    element :unidade_ressacimento_transporte_input, '#unidadeRessacimentoTransporte_input'
    element :custo_diarias_transportecd_desc_orgao_input, '#custoDiariasTransportecdDescOrgao_input'
    element :tipo_transporte_input, '#tipoTransporte_input'
    element :subtipo_transporte_input, '#subtipoTransporte_input'
    element :observacao_transporte_diaria_input, '#observacaoTransporteDiaria_input'
    element :sem_custo_passagem_input, '#custoPassagens > cp-transportes-diarias:nth-child(1) > div:nth-child(3) > div:nth-child(1) > label:nth-child(1)'
    element :custo_passagem_pago, '#custoPassagens > cp-transportes-diarias:nth-child(1) > div:nth-child(4) > div:nth-child(1) > label:nth-child(1)'
    element :pagasmento_passagens_input, '#pagasmentoPassagens_input'
    element :custo_passagens_ressacimento_input, '#custoPassagens > cp-transportes-diarias:nth-child(1) > div:nth-child(5) > div:nth-child(1) > label:nth-child(1)'
    element :unidade_pagadora_passagens_input, '#unidadePagadoraPassagens_input'
    element :unidade_ressacimento_passagens_input, '#unidadeRessacimentoPassagens_input'
    element :custo_passagens_transpore_pago_orgao_input, '#custoPassagensTransporecdDescOrgao_input'
    element :select_custo_passagens_transpore_pago_orgao_input, '#custoPassagens > cp-transportes-diarias:nth-child(1) > div:nth-child(6) > div:nth-child(1) > label:nth-child(1)'

    #mapeamento equipamento
    element :armamento_input, '#armamento_input'
    element :telecomunicacao_input, '#telecomunicacao_input'
    element :vestuario_input, '#vestuario_input'
    element :outro_equipamentos_input, '#outroEquipamentos_input'

    #mapeando Anexos
    element :descricao_anexo_input, '#descricaoAnexo_input'
    element :data_inclusao_input, 'dataInclusao_input'

    #mapeamento button
    element :definir_integrantes_button, '#definirIntegrantes'
    
    #mapeamento Localizar Integrantes
    element :servidores_input, '#servidores_input'
    elements :tabela, 'tr > td'

    #mapeamento Classificação da Missão
    element :unidade_central_input, '.col-sm-4 > pf-radio:nth-child(1) > pf-input-decorator:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ng-transclude:nth-child(1) > div:nth-child(1) > label:nth-child(1)'
    element :local_input, '.col-sm-4 > pf-radio:nth-child(1) > pf-input-decorator:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ng-transclude:nth-child(1) > div:nth-child(2) > label:nth-child(1)'
    element :unidade_interessada_input, '#unidadeInteressada_input'
    element :valor_diaria_classificacao_input, '#valorDiariaClassificacao_input'
    element :valor_diaria_input, 'span.col-md-12:nth-child(2)'
    element :data_apresentacao_input, '#dataApresentacao_input'
    element :hora_apresentacao_input, '#horaApresentacao_input'
   
    element :deslocamento_sigilo_sim_input, '.form-vertical > div:nth-child(22) > div:nth-child(4) > div:nth-child(1) > pf-radio:nth-child(1) > pf-input-decorator:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ng-transclude:nth-child(1) > div:nth-child(1) > label:nth-child(1) > input:nth-child(1)'
    element :deslocamento_sigilo_nao_input, '.form-vertical > div:nth-child(22) > div:nth-child(4) > div:nth-child(1) > pf-radio:nth-child(1) > pf-input-decorator:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ng-transclude:nth-child(1) > div:nth-child(2) > label:nth-child(1) > input:nth-child(1)'
    
    element :curso_sim_input, '.form-vertical > div:nth-child(22) > div:nth-child(5) > div:nth-child(1) > pf-radio:nth-child(1) > pf-input-decorator:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ng-transclude:nth-child(1) > div:nth-child(1) > label:nth-child(1)'
    element :curso_nao_input, '.form-vertical > div:nth-child(22) > div:nth-child(5) > div:nth-child(1) > pf-radio:nth-child(1) > pf-input-decorator:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > ng-transclude:nth-child(1) > div:nth-child(2) > label:nth-child(1)'
    
    element :mais_dez_integrantes_evento_sim_input, '#maisDeisServidores > pf-radio > pf-input-decorator > div > div > div > ng-transclude > div:nth-child(1) > label'
    element :mais_dez_integrantes_evento_nao_input, '#maisDeisServidores > pf-radio > pf-input-decorator > div > div > div > ng-transclude > div:nth-child(2) > label'
    
    element :justificativa_inicio_termino_feriado_fim_semana_input, '#justificativaInicioTerminoFeriadoFimSemana_input'

    #mapeamento do elemento contendo o número da requisição
    element :numero_requisicao_input, '.container-fluid > div:nth-child(1) > div:nth-child(1) > cp-static-text:nth-child(1) > div:nth-child(2) > div:nth-child(1) > span:nth-child(1)'
   
    #botões
    def salvar
        find('.fa-floppy-o').click
    end

    def cancelar
        find('span.form-buttons-wrapper:nth-child(2) > a:nth-child(1) > span:nth-child(1)').click
    end

    def voltar
        find('span.form-buttons-wrapper:nth-child(1) > a:nth-child(1) > span:nth-child(1)').click
    end

    def enviar
        find('.btn-outline-success > span:nth-child(1)').click
    end

    def definir_integrantes
        definir_integrantes_button.click
    end

    def pesquisar
        find('div.col-sm-12:nth-child(2) > pf-form-buttons:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > a:nth-child(1)').click
    end

    def limpar
        find('div.col-sm-12:nth-child(2) > pf-form-buttons:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > span:nth-child(2) > a:nth-child(1)').click
    end
  
=begin

     * Métodos Referente aos Dados da Ordem
=end

#dados da missão
    def ordem_missao_policial 
        ordem_input_missao_policial.click
    end

    def ordem_servico
        ordem_input_servico.click
    end

    def missao_comum
        servico_comum_input.click
    end

    
    def missao_sigilosa
        servico_sigilosa_input.click
    end

    def cidade(info_cidade)
        cidade_uf_input.click
        select info_cidade, from: 'cidadeUF_input'
    end

    def tipo_destino(tipo, pais, uf, info_cidade)
        tipo_destino_input.click
        select tipo, from: 'tipoDeDestino_input'
        if tipo == 'Interestadual'
            destino_uf_input.click
            select uf, from: 'destinoUF_input'
            cidade info_cidade
        elsif tipo == 'Internacional'
            pais_input.click
            select pais, from: 'pais_input'
            cidade_uf_input.click
            cidade_uf_input.set info_cidade
        else
            cidade info_cidade
        end
    end

    def data_inicio(data1)
        data_inicio_input.click.set data1
    end

    def data_fim(data2)
        data_fim_input.click.set data2 
        find('div.col-sm-3:nth-child(3) > pf-input-text:nth-child(1) > pf-input-decorator:nth-child(1) > div:nth-child(1) > label:nth-child(1)').click
    end

    def inquerito(numero_inquerito)
        num_inquerito_policial_input.click.set numero_inquerito
    end

    def area_atuacao(area_atua)
        area_atuacao_input.click
        select area_atua, from: 'areaAtuacao_input'
    end

    def unidade_inquerito_policial(unidade)
        unidade_inquerito_input.click
        if unidade == 'NUCLEO DE CONTROLE DE ARMAS - NUARM/DPF/PCA/SP'
            find('#ui-select-choices-row-1-1 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS  - DELEPREV/DRCOR/SR/PF/SC'
            find('#ui-select-choices-row-1-2 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS - DELEPREV/DRCOR/SR/PF/SE'
            find('#ui-select-choices-row-1-3 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'SERVICO DE POS-GRADUACAO - SPG/CESP/ANP/DGP/PF'
            find('#ui-select-choices-row-1-4 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS  - DELEPREV/DRCOR/SR/PF/SP'
            find('#ui-select-choices-row-1-5 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CORRUPCAO E CRIMES FINANCEIROS - DELECOR/DRCOR/SR/PF/MS'
            find('#ui-select-choices-row-1-6 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'UNIDADE TECNICO-CIENTIFICA - UTEC/DPF/JZO/BA'
            find('#ui-select-choices-row-1-7 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CORRUPCAO E CRIMES FINANCEIROS - DELECOR/DRCOR/SR/PF/MT'
            find('#ui-select-choices-row-1-8 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS -  DELEPREV/DRCOR/SR/PF/RR'
            find('#ui-select-choices-row-1-9 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'UNIDADE DE INTELIGENCIA POLICIAL - UIP/DPF/CGE/PB'
            find('#ui-select-choices-row-1-10 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'DELEGACIA DE REPRESSAO A CRIMES PREVIDENCIARIOS - DELEPREV/DRCOR/SR/PF/RS'
            find('#ui-select-choices-row-1-11 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'NUCLEO DE POLICIA DE IMIGRACAO - NUMIG/DPF/JZO/BA'
            find('#ui-select-choices-row-1-12 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'COORDENACAO-GERAL DE POLICIA DE IMIGRACAO - CGPI/DIREX/PF'
            find('#ui-select-choices-row-1-13 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'UNIDADE DE ATENDIMENTO MEDICO E BIOPSICOSSOCIAL - UAMB/SR/PF/RO'
            find('#ui-select-choices-row-1-14 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'SERVICO DE SEGURANCA AEROPORTUARIA - SAER/DCIM/CGPI/DIREX/PF'
            find('#ui-select-choices-row-1-15 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'UNIDADE DE ATENDIMENTO MEDICO E BIOPSICOSSOCIAL - UAMB/SR/PF/RS'
            find('#ui-select-choices-row-1-16 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'SERVICO DE ENSINO OPERACIONAL  - SEOP/DIDH/COEN/ANP/DGP/PF'
            find('#ui-select-choices-row-1-17 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'NUCLEO DE CONTROLE DE PRODUTOS QUIMICOS - NUCPQ/DPF/XAP/SC'
            find('#ui-select-choices-row-1-18 > span:nth-child(1) > div:nth-child(1)').select_option
        elsif unidade == 'PROTOCOLO - PROTOCOLO/NAD/SELOG/SR/PF/GO'
            find('#ui-select-choices-row-1-19 > span:nth-child(1) > div:nth-child(1)').select_option
        end
    end

    def tipo_missao(descricao)
        tipo_missao_input.click
        select descricao, from: 'tipoMissao_input'
    end

   ##metódo interação lista orgão parceiros, este mesmo será usado no método orgaos_parceiros
   def interacao_orgao_parceiros(orgao_busca)
        @intervalo = 1
        while @intervalo < 100 do
            objeto = find(:xpath, "/html/body/div[1]/application/pf-layout/div/div[1]/ng-transclude/div/dados-ordem-cadastrar-ordem/div/div/div/div[1]/div/div/div/div[8]/div[2]/div/dual-list-box/div[2]/select/option[#{@intervalo}]")
            busca = objeto.text
            if busca == orgao_busca
                objeto.click
                find('button.fa:nth-child(2)').click
                break
            end
            @intervalo += 1
        end
    end

   def orgaos_parceiros(list_orgao_parceiro)
       orgaos_parceiros_input.click
       tamanho_list = list_orgao_parceiro.size
       @i = 0
       while @i < tamanho_list do
           interacao_orgao_parceiros list_orgao_parceiro[@i]
           @i += 1
       end
   end
   
  
#Diárias e Transporte
   #diárias
    def pagamento_sem_ressacimento(unidade)
        custo_diaria_pago_sem_ressacimento_input.click
        pagamento_transporte_input.click
        select unidade, from: 'pagasmentoTransporte_input'
    end

    def pagamento_com_ressacimento(unidade, unidade2)
        custo_diaria_pago_com_ressacimento_input.click
        unidade_pagadora_transporte_input.click
        select unidade, from: 'unidadePagadoraTransporte_input'
        unidade_ressacimento_transporte_input.click
        select unidade2, from: 'unidadeRessacimentoTransporte_input'
    end
    
    def pagamento_outro_orgao(orgao)
        custo_diaria_pago_outo_orgao_input.click
        custo_diarias_transportecd_desc_orgao_input.click.set orgao
    end

    #Transporte
    def tipo_transporte(transporte, sub_tipo_transp)
        tipo_transporte_input.click
        select transporte, from: 'tipoTransporte_input'
        subtipo_transporte_input.click
        select sub_tipo_transp, from: 'subtipoTransporte_input'
    end

    def custo_passagem_paga(unidade)
        custo_passagem_pago.click
        pagasmento_passagens_input.click
        select unidade, from: 'pagasmentoPassagens_input'
    end

    def custo_passagem_paga_ressacimento(unidade, unidade2)
        custo_passagens_ressacimento_input.click
        unidade_pagadora_passagens_input.click
        select unidade, from: 'unidadePagadoraPassagens_input'
        unidade_ressacimento_passagens_input.click
        select unidade2, from: 'unidadeRessacimentoPassagens_input'
    end

    def custo_passagem_paga_outro_orgao(orgao)
        select_custo_passagens_transpore_pago_orgao_input.click
        custo_passagens_transpore_pago_orgao_input.click.set orgao
    end

    #centro de custo
    def centro_custo(codigo, centro)
        undefined_input.click.set codigo
        find(:xpath, '/html/body/div[1]/application/pf-layout/div/div[1]/ng-transclude/div/dados-ordem-cadastrar-ordem/div/div/div/div[1]/div/div/div/div[14]/div/div/div[1]/cp-auto-complete/pf-input-decorator/div/div/div/ng-transclude/ul/li/a').click
        centro_custo_input.click.set centro
    end

    def selecionar_autoridade(autoridade)
        find('#autoridade_input > div > span').click
        find(:xpath,'//*[@id="autoridade_input"]/input[1]').send_keys autoridade
        find('#ui-select-choices-row-0-0 > span').click
    end
    
    def anexar_arquivo(descricao)
        @anexar = Tools.new
      
        #setup arquivo
        caminho = 'C:\\automocao\\mob2\\features\\arquivo\\PDF_TESTE.pdf'
        campo = 'fileInput'
        @anexar.upload caminho, campo
        descricao_anexo_input.set descricao
        find('div.row:nth-child(26) > div:nth-child(2) > span:nth-child(2) > pf-form-buttons:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > a:nth-child(1)').click
    end

    #A data já vem setada por default
    def adicionar_data(data)
        data_inclusao_input.set data
    end

=begin

     * Métodos Referente a Definir Integrantes
=end

    #método buscar servidor
    def buscando_servidor servidor, dias
        servidores_input.set servidor
        pesquisar
        tamanho_dados = tabela.size
        @i = 0
        while @i < tamanho_dados do
            if servidor == tabela[0].text
                find('a.btn:nth-child(2)').click
                if dias.to_i > 10
                   find(:xpath, '//*[@id="btn1"]').click 
                end
                break
            end
            @i +=1
        end
    end
  
    #Método Localizar Integrantes
    def incluir_servidor servidor, dias
        find('body > div.wrapper.ng-scope > application > pf-layout > div > div.content-layer.m-b-1 > ng-transclude > div > integrantes-ordem-cadastrar-ordem > div > div > div > div.tab-pane.ng-scope.active > div > div > div > div:nth-child(11) > div > pf-radio > pf-input-decorator > div > div > div > ng-transclude > div:nth-child(1) > label').click
        buscando_servidor servidor, dias
        limpar
    end

    def definir_chefe chefe
        @posicao = 0
        tabela.each do |lista|
           if lista.text == chefe
                linha = (@posicao/7) + 1
                find("cp-table-servidores-integrantes-remover.ng-isolate-scope > div:nth-child(1) > table:nth-child(2) > tbody:nth-child(2) > tr:nth-child(#{linha}) > td:nth-child(6) > input:nth-child(1)").click
                break
            end
            @posicao +=1
        end
    end

    #Método Definir um chefe da equipe
    def equipe nome_chefe
        definir_chefe nome_chefe
    end

    #método colaborador eventual
    def colaborador_eventual
        find('body > div.wrapper.ng-scope > application > pf-layout > div > div.content-layer.m-b-1 > ng-transclude > div > integrantes-ordem-cadastrar-ordem > div > div > div > div.tab-pane.ng-scope.active > div > div > div > div:nth-child(11) > div > pf-radio > pf-input-decorator > div > div > div > ng-transclude > div:nth-child(3) > label').click
    end

=begin

     * Métodos Referente a Classificação da Missão
=end

    #interesse
    def interesse(tipo_interesse, unidade_interessada)
        if tipo_interesse == 'Unidade Central'
            unidade_central_input.click
        else
            local_input.click
        end
        if unidade_interessada != nil
            unidade_interessada_input.click
            select unidade_interessada, from: 'unidadeInteressada_input'
        end
    end

    #Valor da Diária
    def info_valores_diarias(valores, data_apresentacao, horario_apresentacao)
        valor_diaria_classificacao_input.click
        select valores, from: 'valorDiariaClassificacao_input'
        
        #por default o form data vem preenchida com a data posteriro da atual
        if data_apresentacao != ''
            data_apresentacao_input.click.set data_apresentacao
        end
        hora_apresentacao_input.click.set horario_apresentacao
    end
end