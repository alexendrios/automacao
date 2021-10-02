#language:pt

@portifolio
Funcionalidade: Efetuar uma consulta - portifólio

Cenário: Verificar se o saldo presente no Meu portifólio corresponde ao saldo no Protifólio Sugerido
Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "55596-7" senha "88888888"
Quando Acesso o saldo do Meu Portifólio e acesso o saldo do Portifólio Sugerido
Então verifico que os valores correspondem retornando 'true'
