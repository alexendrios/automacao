#language: pt
@requerimento_de_transferencia_de_registro_de_arma_de_fogo
Funcionalidade: Requerimento de Transferência de Registro de Arma de Fogo

  @requerer_e_manifestar_transferencia_registro_PF
  @requerimento_transferencia_registro_PF
  Cenario: Requerimento de transferencia de Registro para pessoa física
    Quando solicitar a transferencia de Registro para pessoa física
    E preencher o formulário de transferencia de Registro para pessoa física
    Entao deve visualizar o requerimento de transferencia de Registro para pessoa física

  @requerer_e_manifestar_transferencia_registro_PF
  @manifestar_processo_transferencia_registro_PF
  Cenario: Manifestar processo de transferencia de registro de arma de fogo para pessoa fisica
    Quando receber um processo de transferencia de registro de arma de fogo para pessoa fisica
    E solicitar manifestar o processo de transferencia de registro
    E analisar os dados da situacao do processo de transferencia de registro
    E validar os dados das etapas do processo de transferencia de registro
    E realizar uma nova manifestacao de decisao transferencia para registro
    Entao deve visualizar "Operação efetuada com sucesso."

  @requerer_e_manifestar_transferencia_registro_PJ
  @requerimento_transferencia_registro_PJ
  Cenario: Requerimento de transferencia de Registro para pessoa juridica
    Quando solicitar a transferencia de Registro para pessoa juridica
    E preencher o formulário de transferencia de Registro para pessoa juridica
    Entao deve visualizar o requerimento de transferencia de Registro para pessoa juridica

  @requerer_e_manifestar_transferencia_registro_PJ
  @manifestar_processo_transferencia_registro_PJ
  Cenario: Manifestar processo de transferencia de registro de arma de fogo para pessoa juridica
    Quando receber um processo de transferencia de registro de arma de fogo para pessoa juridica
    E solicitar manifestar o processo de transferencia de registro para pessoa juridica
    E analisar os dados da situacao do processo de transferencia de registro para pessoa juridica
    E validar os dados das etapas do processo de transferencia de registro para pessoa juridica
    E realizar uma nova manifestacao de decisao transferencia para registro para pessoa juridica
    Entao será exibida a mensagem "Operação efetuada com sucesso."