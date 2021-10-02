#language: pt

@logout
@requerimento_cadastro_pt

Funcionalidade: Requerimento de Cadastro

Contexto: Sistema Logado
Dado que eu estou logado como "juliana.jp" e 'ctidpf'

@requerimento_cadastro_sucesso
Cenário: Realizar o Registro para Credenciamento 

Quando eu estou no formulario Registro para Credenciamento e insiro os seguintes dados: tipo credencial 'permanente' aeroporto 'brasilia' atividade 'Empresas de Carga Aérea' descrição atividade 'Operador Logísitico' cnpj '67108517000170' razão social 'Iago e Marlene Limpeza ME' nome fantasia 'Avião das Cargas' telefone '6137124798'  contato 'Maria João' orgão '' nome completo 'Luna Sandra Gabriela Brito' nome da mae 'Sônia Débora' nome do pai 'Lucas Ruan Brito' sexo 'Feminino' data de nascimento '27/01/1990' nacionalidade 'BRASIL' uf de nascimento 'MA' cidade de nascimento 'Codó' cpf '08619460307' documento identificacao '303474348' orgão expedidor 'SSP' uf documento de identificacao 'MA' pais 'BRASIL' cep '66095136' numero '708' referência nome 'Alessandra Laís' referência telefone '9137426788' vinculo 'Família' residente Brasil '' passaporte '' tempo residente ''

#Entao eu visualizo a confirmação inclusão de ocorrência "Registro salvo com sucesso."