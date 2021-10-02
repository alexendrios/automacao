#language: pt

@login
@estrutura_investigativa

Funcionalidade: Cadastrar Estrutura Investigativa
SENDO um usuario
EU QUERO realizar um cadastro de unidade subUnidade e nucleo
PARA que eu possa criar uma estrutura investigativa


Cenário: Cadastrar Unidade
Dado que eu estou na tela de estrutura investigativa
Quando eu clico na opção unidade
E eu informo os dados da unidade
E eu visualizo a confirmação do Cadastro "Unidade adicionada com sucesso!"
E eu passo para o cadastro de subUnidade

#Cenário: Cadastrar SubUnidade
#Dado que eu estou na tela de Cadastro de SubUnidade
#Quando eu informo os dados da SubUnidade
#E eu visualizo a confirmação do Cadastro "SubUnidade adicionada com sucesso!"
#E eu passo para o cadastro do nucleo

#Cenário: Cadastrar Nucleo
#Dado que eu estou na tela de Cadstro de Nucleo
#Quando eu informo os dados do nucleo
#E eu visualizo a confirmação do Cadastro "Núcleo de Análise adicionado com sucesso!"
#Então eu finalizo o cadastro da estrutura investigativa