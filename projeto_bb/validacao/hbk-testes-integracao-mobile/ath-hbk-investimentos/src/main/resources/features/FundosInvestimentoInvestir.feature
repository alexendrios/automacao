#language:pt
@fundos_investimento_investir
Funcionalidade: Efetuar Investimento - Módulo Tesouro Direto

  Contexto: Sistema Logado
    Dado que eu esteja logado com os seguintes dados agencia "18-3" conta "1020-0" senha "88888888"

  @001_investimento_investir_normal
  Cenário: Realizar o  investimento no Fundos de Investimentos - Modalidade Normal
    Quando informo o a modalidade de Investimento operação: "Normal", Fundo de Investimento "MERCEARIA MANA", valor "200,00",
    E informo senha de seis dígitos "666666" para realizar o Investimento no Fundos de Investimento,
    Então eu vejo a seguinte a mensagem de confirmação do Investimentos do Fundos de Investimento "Sucesso"

  @002_investimento_investir_agendamento
  Cenário: Realizar o  investimento no Fundos de Investimentos - Modalidade Agendamento
    Quando informo o a modalidade de Investimento operação: "Agendado", Fundo de Investimento "FUNERARIA RAMOS", valor "200,00", data "20/09/2019"
    E informo senha de seis dígitos "666666" para realizar o Investimento no Fundos de Investimento,
    Então eu vejo a seguinte a mensagem de confirmação do Investimentos do Fundos de Investimento "Sucesso"

  @003_investimento_investir_programado
  Cenário: Realizar o  investimento no Fundos de Investimentos - Modalidade Agendamento
    Quando informo o a modalidade de Investimento operação: "Programado", Fundo de Investimento "MERCEARIA MANA", valor "200,00", data "20/09/2019", Prazo "1 Mês",
    E informo senha de seis dígitos "666666" para realizar o Investimento no Fundos de Investimento,
    Então eu vejo a seguinte a mensagem de confirmação do Investimentos do Fundos de Investimento "Sucesso"
