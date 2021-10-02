#language: pt


@logout
@pesquisar_credenciado_restricao  
Funcionalidade: Pesquisar Credenciado com Restrição no CANARD

Contexto: Sistema Logado
Dado que estou logado no sistema como "juliana.jp" e 'ctidpf'

@pesquisa_caractere_nome
Cenario: Pesquisa Credenciado com Restrição no CANARD informando um caractere no Campo Nome Completo

Quando eu insiro um caractere 'a' no campo Nome completo
Entao vejo a seguinte "Resultado da Pesquisa"

@pesquisa_nome_completo
Cenario: Pesquisa os Credenciado com Restrição no CANARD informando um nome no Campo Nome Completo

Quando eu insiro um nome 'ANTONIO SANTOS' no campo Nome Completo
Entao vejo o nome Completo 'ANTONIO SANTOS'

@pesquisa_caractere_mae
Cenario: Pesquisa os Credenciado com Restrição no CANARD informando um caractere no Campo da Mae

Quando eu insiro um caractere 'm' no Campo Mae
Entao vejo a seguinte "Resultado da Pesquisa"

@pesquisa_mae
Cenario: Pesquisa os Credenciado com Restrição no CANARD informando o nome da Mae

Quando eu insiro o nome 'MARLENE SANTOS SAMPAIO' no Campo Mae
Entao vejo o nome da mae 'MARLENE SANTOS SAMPAIO'

@pesquisa_data_nascimento
Cenario: Pesquisa os Credenciado com Restrição no CANARD informando uma Data Nascimento

Quando eu insiro uma data de nascimento '15/01/1987'
Entao vejo a seguinte "Resultado da Pesquisa"

@pesquisa_numero_documento
Cenario: Pesquisa os Credenciado com Restrição no CANARD informando um Numero de documento

Quando eu insiro um numero de documento '63169148494'
Entao vejo a seguinte "Resultado da Pesquisa"

@pesquisa_aeroporto_vinculado
Cenario: Pesquisa os Credenciado com Restrição no CANARD informando o nome do Aeroporto Vinculado

Quando eu insiro o nome do aeroporto 'barreiras'
Entao vejo a seguinte "Resultado da Pesquisa"