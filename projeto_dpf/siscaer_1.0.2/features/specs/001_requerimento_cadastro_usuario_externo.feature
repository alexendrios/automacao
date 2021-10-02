#language: pt

@requerimento_cadastro_usuario_externo

Funcionalidade: Requerimento de Cadastro Usuário Externo
Cenário: Realizar o Registro para Credenciamento Usuário Externo

Dado que eu visito o endereco 'https://prehom.dpf.gov.br/siscaer-publico-web/#/'
Quando sou um usuario externo e preencho o formulario Registro para Credenciamento inserindo os seguintes dados: tipo credencial 'permanente' aeroporto 'brasilia' atividade 'Empresas de Carga Aérea' descrição atividade 'Operador Logísitico' cnpj '67108517000170' razão social 'Iago e Marlene Limpeza ME' nome fantasia 'Avião das Cargas' telefone '6137124798'  contato 'Maria João' orgão 'DPF' nome completo 'Pedro Gilson Dias de Araujo' nome da mae 'Maria da Gloria Dias de Araujo' nome do pai 'Arnaldo Souto Dias de Araujo' sexo 'Masculino' data de nascimento '25/01/1965' nacionalidade 'BRASIL' uf de nascimento 'RJ' cidade de nascimento 'Rio de Janeiro' cpf '71332285210' documento identificacao '303474348' orgão expedidor 'SSP' uf documento de identificacao 'RJ' pais 'BRASIL' cep '70070924' numero '708' referência nome 'Alessandra Laís' referência telefone '9137426788' vinculo 'Família' residente Brasil '' passaporte '' tempo residente ''

#Entao eu visualizo a confirmação inclusão de ocorrência "Registro salvo com sucesso."