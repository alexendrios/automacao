#language: pt
@requererimento_segunda_via_de_documento
Funcionalidade: Requerimento de Segunda Via de Documento

  @requerer_e_manifestar_segunda_via_registro_PF
  @requerimento_segunda_via_registro_PF
  Cenario: Requerimento de segunda via de registro de arma para pessoa fisica
    Quando solicitar o requerimento de segunda via de registro de arma para pessoa fisica
    E preencher o formulário de requerimento de segunda via de registro de arma para pessoa fisica
    Entao deve visualizar o requerimento de segunda via de registro de arma para pessoa fisica

   @requerer_e_manifestar_segunda_via_registro_PF
  @manifestar_processo_segunda_via_registro_PF
  Cenario: Manifestar processo de segunda via de registro de arma para pessoa física
    Quando receber um processo de segunda via de registro de arma para pessoa física
    E solicitar manifestar o processo de segunda via de registro para pessoa física
    E analisar os dados da situacao do processo de segunda via de registro para pessoa física
    E validar os dados das etapas do processo de segunda via de registro para pessoa física
    E realizar uma nova manifestacao de decisao de segunda via de registro para pessoa física
    Entao visualize a mensagem "Operação efetuada com sucesso."

  # @Interferência manual # Precisa informar o nr_serie de uma arma que já tenha porte
  # @requerer_e_manifestar_segunda_via_porte
  # @requerimento_segunda_via_porte
  # Cenario: Requerimento de segunda via de porte de arma
  #   Quando solicitar o requerimento de segunda via de porte de arma
  #   E preencher o formulário de requerimento de segunda via de porte de arma
  #   Entao deve visualizar o requerimento de segunda via de porte de arma

  # @Interferência manual
  #  @requerer_e_manifestar_segunda_via_porte
  # @manifestar_processo_segunda_via_porte
  # Cenario: Manifestar processo de segunda via de porte de arma
  #   Quando receber um processo de segunda via de porte de arma
  #   E solicitar manifestar o processo de segunda via de porte de arma
  #   E analisar os dados da situacao do processo de segunda via de porte de arma
  #   E validar os dados das etapas do processo de segunda via de porte de arma
  #   E realizar uma nova manifestacao de decisao de segunda via de porte de arma
  #   Entao exibe "Operação efetuada com sucesso."

  @requerer_e_manifestar_segunda_via_registro_PJ
  @requerimento_segunda_via_registro_PJ
  Cenario: Requerimento de segunda via de registro de arma para pessoa juridica
    Quando solicitar o requerimento de segunda via de registro de arma para pessoa juridica
    E preencher o formulário de requerimento de segunda via de registro de arma para pessoa juridica
    Entao deve visualizar o requerimento de segunda via de registro de arma para pessoa juridica

  @requerer_e_manifestar_segunda_via_registro_PJ
  @manifestar_processo_segunda_via_registro_PJ
  Cenario: Manifestar processo de segunda via de registro de arma para pessoa juridica
    Quando receber um processo de segunda via de registro de arma para pessoa juridica
    E solicitar manifestar o processo de segunda via de registro para pessoa juridica
    E analisar os dados da situacao do processo de segunda via de registro para pessoa juridica
    E validar os dados das etapas do processo de segunda via de registro para pessoa juridica
    E realizar uma nova manifestacao de decisao de segunda via de registro para pessoa juridica
    Entao será mostrado "Operação efetuada com sucesso."


