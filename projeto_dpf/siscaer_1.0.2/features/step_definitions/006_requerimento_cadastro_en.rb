Quando("eu estou no formulario Registro para Credenciamento e esocolha a Bandeira Americana onde muda o formulário para a Língua inglesa onde insiro os seguintes dados: tipo credencial {string} aeroporto {string} atividade {string} descrição atividade {string} cnpj {string} razão social {string} nome fantasia {string} telefone {string}  contato {string} orgão {string} nome completo {string} nome da mae {string} nome do pai {string} sexo {string} data de nascimento {string} nacionalidade {string} uf de nascimento {string} cidade de nascimento {string} cpf {string} documento identificacao {string} orgão expedidor {string} uf documento de identificacao {string} pais {string} cep {string} numero {string} referência nome {string} referência telefone {string} vinculo {string} residente Brasil {string} passaporte {string} tempo residente {string}") do |tipo_credencial, 
        aeroporto, atividade, descricao_atividade, cnpj, razao_social, nome_fantasia, telefone, contato, orgao, nome_completo, 
        nome_mae, nome_pai, sexo, data_nascimento, nacionalidade, uf_nascimento, cidade_nascimento, cpf, documento_identificacao, 
        orgao_expedidor,  uf_documento_identificacao, pais, cep, numero, referencia_nome, referencia_telefone, vinculo, residente_brasil,
        passaporte, tempo_residente|

        @requerimento = RequerimentoCadastro.new    

        #Navegar na página
        @requerimento.navegar_requerimento
        @requerimento.navegar_cadastro
        @requerimento.escolher_idioma

        #formulária 1ª parte
        @requerimento.preencher_formulario tipo_credencial, aeroporto, atividade,
                                        descricao_atividade, cnpj, razao_social,
                                        nome_fantasia, telefone, contato, orgao
       
        #formulária 2ª parte
        @requerimento.preencher_formulario_dados_pessoais nome_completo, nome_mae, nome_pai, sexo,
                                                 data_nascimento, nacionalidade, uf_nascimento, 
                                                 cidade_nascimento, cpf, documento_identificacao, 
                                                 orgao_expedidor, uf_documento_identificacao,
                                                 residente_brasil, passaporte, tempo_residente 

        #formulária 3ª parte
        @requerimento.preencher_formulario_endereco pais, cep, numero, referencia_nome,
                                      referencia_telefone, vinculo

        #questionário
        @requerimento.preencher_questionario
       
end

