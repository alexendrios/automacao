class RequerimentoCadastro < SitePrism::Page

    #Elementos: Inputs Mapeados
    #mapeando o formulário cadastro 1ª parte
    element :tipo_credencial_temporaria, 'div.form-check-inline:nth-child(1) > label:nth-child(1) > input:nth-child(1)'
    element :tipo_credencial_permanente, '#ui-tabpanel-0 > siscaer-aba-requerimento-cadastro:nth-child(1) > div:nth-child(2) > div:nth-child(1) > app-pf-radio:nth-child(3) > div:nth-child(2) > label:nth-child(1) > input:nth-child(1)'
    element :tipo_credencial_oficial, '#ui-tabpanel-0 > siscaer-aba-requerimento-cadastro:nth-child(1) > div:nth-child(2) > div:nth-child(1) > app-pf-radio:nth-child(3) > div:nth-child(3) > label:nth-child(1) > input:nth-child(1)'
    element :auto_complet, '.ui-autocomplete-items'
    element :aeroporto_vinculado_input,'#aeroportoVinculado'
    element :tipo_atividade_input, '#tipoAtividade'
    element :descricao_atividade_input, '#descricaoAtividade'
    element :cnpj_input, '#cnpj'
    element :razao_social_input, '#razaoSocial'
    element :nome_fantasia_input, '#nomeFantasia'
    element :telefone_empresa_input, '#telefoneDaEmpresa'
    element :nome_contato_empresa_input, '#nomeDeContatoDaEmpresa'
    element :orgao_publico_input, '#empresaOrgaoPublicoRepresentacaoDiplomatica'
    
    #mapeando o formulário cadastro 2ª parte
    element :nome_completo_input, '#nomeCompleto'
    element :nome_mae_input, '#nomeDaMae'
    element :nome_pai_input, '#nomeDoPai'
    element :sexo_input, '#sexo'
    element :data_nascimento_input, '#dataDeNascimento'
    element :nacionalidade_input, '#nacionalidade'
    element :uf_nascimento_input, '#ufNascimento'
    element :cidade_nascimento_input, '#cidadeNascimento'
    element :cpf_input, '#cpf'
    element :documento_identificacao_input, '#documentoIdentificacao'
    element :orgao_expedidor_input, '#orgaoExpedidor'
    element :uf_documento_identificacao_input, '#ufDocumentoIdentificacao'
    element :passaporte_input, '#passaporte'
    element :tempo_residente_Brasil_input, '#quantoTempoResideNoBrasil'
    


    #mapeando o formulário cadastro 3ª parte
    element :pais_input, '#pais'
    element :cep_input, '#cep'
    element :numero_input, '#numero'
    element :referencia_nome_input, '#referencia1Nome'
    element :referencia_telefone_input, '#referencia1Telefone'
    element :vinculo_unput, '#referencia1Vinculo'
    
    #mapeando o questionário
    element :procedente_1_negativo_input, 'div.ng-untouched > siscaer-pergunta-delito:nth-child(1) > div:nth-child(1) > div:nth-child(1) > app-pf-radio:nth-child(1) > div:nth-child(3) > label:nth-child(1) > input:nth-child(1)'
    element :procedente_2_negativo_input, 'div.ng-untouched > siscaer-pergunta-delito:nth-child(3) > div:nth-child(1) > div:nth-child(1) > app-pf-radio:nth-child(1) > div:nth-child(3) > label:nth-child(1) > input:nth-child(1)'
    element :procedente_3_negativo_input, 'div.ng-untouched > siscaer-pergunta-delito:nth-child(5) > div:nth-child(1) > div:nth-child(1) > app-pf-radio:nth-child(1) > div:nth-child(3) > label:nth-child(1) > input:nth-child(1)'
    element :procedente_4_negativo_input, 'div.ng-untouched > siscaer-pergunta-atentado:nth-child(7) > div:nth-child(1) > div:nth-child(1) > app-pf-radio:nth-child(1) > div:nth-child(3) > label:nth-child(1) > input:nth-child(1)'
    element :ciencia_input, '#cienciaDosDados'

    #mapeando botões
    element :proximo_button, '#proximo'
    element :adicionar_credencial_button, '#adicionarCredencial'
    element :salvar_button, '#salvar'
    element :resisente_brasil_sim_button, '#resideNoBrasil'
    element :resisente_brasil_nao_button, '#resideNoBrasil'
    element :button_foto, '#removerFoto'
    element :button_foto_recortar, 'div.input-wrapper:nth-child(2) > label:nth-child(1)'
    
   #Método navegando
    def proxima
        proximo_button.click
    end
    
    def adicionar_credencial
        adicionar_credencial_button.click 
    end

    def navegar_requerimento
       find(:xpath,'/html/body/app-root/div/div/nav/pf-menu-navbar/ul/li[5]/a/span').click
    end

    def navegar_cadastro
       find(:xpath, '/html/body/app-root/div/div/nav/pf-menu-navbar/ul/li[5]/ul/li/a/span').click
    end

    def salvar
        salvar_button.click
    end

    def escolher_idioma
        find('.card-body > div:nth-child(1) > div:nth-child(2) > app-translator:nth-child(1) > a:nth-child(2) > img:nth-child(1)').click
    end

    def adicionar_foto
        @arquivo = Tools.new
        caminho_arquivo = "C:\\automocao\\siscaer_1.0.2\\features\\arquivos\\JPG_TESTES.jpg"
        campo_file = 'cropper'
        button_foto.click
        @arquivo.upload caminho_arquivo, campo_file
        button_foto_recortar.click
    end
      
    #Método preenchendo cadastro 1ª parte
    def preencher_formulario(tipo_credencial, aeroporto_vinculado, tipo_atividade, 
                            descricao_atividade, cnpj, razao_social, nome_fantasia, 
                            telefone_empresa, nome_contato_empresa, 
                            orgao_publico)
                                                                                        
            tipo_credencial = tipo_credencial.upcase
          
            
            if tipo_credencial.eql? 'OFICIAL'
            
                    #tipo_credencial_oficial.click
                    aeroporto_vinculado_input.click.set aeroporto_vinculado
                    auto_complet.click
                    tipo_atividade_input.click
                    select tipo_atividade, from: 'tipoAtividade'
                    descricao_atividade_input.click.set descricao_atividade
                    orgao_publico_input.click.set orgao_publico
                else
                    if tipo_credencial.eql? 'PERMANENTE'
                            tipo_credencial_permanente.click
                        else
                           tipo_credencial_temporaria.click
                    end
                    aeroporto_vinculado_input.click.set aeroporto_vinculado
                    auto_complet.click
                    tipo_atividade_input.click
                    select tipo_atividade, from: 'tipoAtividade'
                    descricao_atividade_input.click.set descricao_atividade
                    cnpj_input.click.set cnpj
                    razao_social_input.click.set razao_social
                    nome_fantasia_input.click.set nome_fantasia
                    telefone_empresa_input.click.set telefone_empresa
                    nome_contato_empresa_input.click.set nome_contato_empresa
                    orgao_publico_input.click.set orgao_publico
            end
        adicionar_credencial
        proxima
    end

   #Método preenchendo cadastro 2ª parte
   def preencher_formulario_dados_pessoais(nome_completo, nome_mae, nome_pai, sexo,
                                        data_nascimento, nacionalidade, uf_nascimento, 
                                        cidade_nascimento, cpf, documento_identificacao, 
                                        orgao_expedidor, uf_documento_identificacao,
                                        residente_brasil, passaporte, tempo_residente)

        #setup referente ao upload 
       
       

        nome_completo_input.click.set nome_completo
        nome_mae_input.click.set nome_mae
        nome_pai_input.click.set nome_pai
        sexo_input.click
        select sexo, from: 'sexo'
        data_nascimento_input.click.set data_nascimento
        nacionalidade_input.click
        select nacionalidade, from: 'nacionalidade'
        if nacionalidade.eql? "BRASIL"
                uf_nascimento_input.click
                select uf_nascimento, from: 'ufNascimento'
                cidade_nascimento_input.click
                select cidade_nascimento, from: 'cidadeNascimento'
                cpf_input.click.set cpf
                documento_identificacao_input.click.set documento_identificacao
                orgao_expedidor_input.click.set orgao_expedidor
                uf_documento_identificacao_input.click
                select uf_documento_identificacao, from: 'ufDocumentoIdentificacao'
            else
                if residente_brasil.eql? "NÃO" 
                        resisente_brasil_nao_button.click
                        cidade_nascimento_input.click.set  cidade_nascimento
                        passaporte_input.click.set passaporte
                    else
                        resisente_brasil_sim_button.click
                        tempo_residente_brasil_input.click.set tempo_residente_brasil
                        cpf_input.click.set cpf
                        documento_identificacao_input.click.set documento_identificacao
                        orgao_expedidor_input.click.set orgao_expedidor
                        uf_documento_identificacao_input.click
                        passaporte_input.click.set passaporte
                end
        end
        adicionar_foto
        proxima
   end

   #Método preenchendo cadastro 3ª parte
   def preencher_formulario_endereco(pais, cep, numero, referencia_nome,
                                    referencia_telefone, vinculo)
        pais_input.click
        select pais, from: 'pais'
        cep_input.click.set cep
        numero_input.click.set numero
        referencia_nome_input.click.set referencia_nome
        referencia_telefone_input.click.set referencia_telefone
        vinculo_unput.click
        select vinculo, from: 'referencia1Vinculo'
        proxima
   end

   #método preencher questionário
   def preencher_questionario
        procedente_1_negativo_input.click
        procedente_2_negativo_input.click
        procedente_3_negativo_input.click
        procedente_4_negativo_input.click
        ciencia_input.click
       #salvar
   end

end