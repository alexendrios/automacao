#language:pt
@investimento_tesouro_direto
Funcionalidade: Efetuar Investimento - Módulo Tesouro Direto

  Contexto: Sistema Logado
    Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "48290-0" senha "88888888"

  @001_investimento_normal
  Cenário: Realizar o  investimento no Tesouro Direto - Modalidade Normal
    Quando informo o a modalidade de Investimento operação: "Normal", Título de Investimento "Tesouro Prefixado 2022", quantidade "00,20",
    E informo senha de seis dígitos "666666"
    Então eu vejo a seguinte a mensagem de confirmação do Investimentos do Tesouro Direto "Sucesso"

  @002_investimento_agendamento
  Cenário: Realizar o  investimento no Tesouro Direto - Modalidade Agendamento
    Quando informo o a modalidade de Investimento operação: "Agendado", Tipo de Agendamento "Quantidade definida", Data compra: "25/07/2019", quantidade vezes "2", Periciodade "Mensal", Modalidade "Por valor", Título de Investimento "Tesouro Prefixado 2022", quantidade "1,00",
    E informo senha de seis dígitos "666666"
    Então eu vejo a seguinte a mensagem de confirmação do Investimentos do Tesouro Direto "Sucesso"

 