# language : pt
@oferta_publica_reserva
Funcionalidade: Reserva Oferta Pública

  Contexto: Sistema Logado
    Dado que eu esteja logado com os seguintes dados agencia "7988-0" conta "48290-0" senha "88888888"

  @001_oferta_publica_reserva
  Cenário: Realizar um Reserva - Oferta Pública - Módulo Reserva
    Quando informo o operação "Reserva", a oferta "TST ALEXANDRE 2", a modalidade de compra "COMPRA-DIRETA CORRENTISTA / A VISTA", a característica "Investidor Não Vinculado (Internet - desenv)", o valor da proposta "200,00", o aceite do termo "SIM",
    E digito a senha de seis dígito "666666" para finalizar a proposta da de reserva Oferta Pública,
    Então eu vejo a seguinte a mensagem de confirmação da Reserva da Oferta Pública com "Sucesso"
