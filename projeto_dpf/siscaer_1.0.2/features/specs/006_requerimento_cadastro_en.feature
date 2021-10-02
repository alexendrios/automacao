#language: pt

@logout
@requerimento_cadastro_en

Funcionalidade: Requerimento de Cadastro

Contexto: Sistema Logado
Dado que eu estou logado como "juliana.jp" e 'ctidpf'

@requerimento_cadastro_sucesso
Cenário: Realizar o Registro para Credenciamento formulário em inglês

Quando eu estou no formulario Registro para Credenciamento e esocolha a Bandeira Americana onde muda o formulário para a Língua inglesa onde insiro os seguintes dados: tipo credencial 'temporário' aeroporto 'brasilia' atividade 'Air cargo company' descrição atividade 'Air Transport' cnpj '63993927000190' razão social 'Martin e Sara Telecomunicações ME' nome fantasia 'Carga Voadora' telefone '19982711004'  contato 'Mary of Help' orgão '' nome completo 'Alice Emily Drumond' nome da mae 'Rochelly Cris Brow' nome do pai 'Julios Robert de Douza' sexo 'Female' data de nascimento '04/12/1996' nacionalidade 'BELGICA' uf de nascimento '' cidade de nascimento 'Bastogne' cpf '' documento identificacao '' orgão expedidor '' uf documento de identificacao '' pais 'BRASIL' cep '08598230' numero '708' referência nome 'Mary Jean' referência telefone '9137426788' vinculo 'Friend' residente Brasil 'Não' passaporte 'DX294831' tempo residente ''

#Entao eu visualizo a confirmação inclusão de ocorrência "Registro salvo com sucesso."