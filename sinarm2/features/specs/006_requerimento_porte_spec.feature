#language: pt

# o porte só será gerado após pagar a GRU manualmente
Funcionalidade: Requerimento de Porte de Registro de Arma de Fogo

  @requerer_e_manifestar_porte
  @requerimento_porte
  Cenario: Requerimento de porte de arma de fogo
    Quando solicitar o porte de arma de fogo
    E preencher o formulário de porte de arma de fogo
    Entao deve visualizar o requerimento de porte de arma de fogo

  @requerer_e_manifestar_porte
  @manifestar_processo_porte
  Cenario: Manifestar processo de porte de arma de fogo
    Quando receber um processo de porte de arma de fogo
    E solicitar manifestar o processo de porte de arma de fogo
    E analisar os dados da situacao do processo de porte de arma de fogo
    E validar os dados das etapas do processo de porte de arma de fogo
    E realizar uma nova manifestacao de decisao de porte de arma de fogo
    Entao deve visualizar a mensagem "Operação efetuada com sucesso."