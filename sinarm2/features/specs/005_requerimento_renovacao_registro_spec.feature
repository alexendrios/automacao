#language: pt
@requererimento_de_renovacao_de_registro_de_arma_de_fogo
Funcionalidade: Requerimento de Renovação de Registro de Arma de Fogo

  @requerer_e_manifestar_renovacao_registro_PF
  @requerimento_renovacao_registro_PF
  Cenario: Requerimento de Renovação de Registro para pessoa física
    Quando solicitar a Renovação de Registro para pessoa física
    E preencher o formulário de Renovação de Registro para pessoa física
    Entao deve visualizar o requerimento de Renovação de Registro para pessoa física

  @requerer_e_manifestar_renovacao_registro_PF
  @manifestar_processo_renovacao_registro_PF
  Cenario: Manifestar processo de renovacao de registro de arma de fogo para pessoa fisica
    Quando receber um processo de renovacao de registro de arma de fogo para pessoa fisica
    E solicitar manifestar o processo de renovacao de registro
    E analisar os dados da situacao do processo de renovacao de registro
    E validar os dados das etapas do processo de renovacao de registro
    E realizar uma nova manifestacao de decisao renovacao para registro
    Entao deve exibir a mensagem "Operação efetuada com sucesso."

  @requerer_e_manifestar_renovacao_registro_PJ
  @requerimento_renovacao_registro_PJ
  Cenario: Requerimento de Renovação de Registro para pessoa juridica
    Quando solicitar a Renovação de Registro para pessoa juridica
    E preencher o formulário de Renovação de Registro para pessoa juridica
    Entao deve visualizar o requerimento de Renovação de Registro para pessoa juridica
  
  @requerer_e_manifestar_renovacao_registro_PJ
  @manifestar_processo_renovacao_registro_PJ
  Cenario: Manifestar processo de renovacao de registro de arma de fogo para pessoa juridica
    Quando receber um processo de renovacao de registro de arma de fogo para pessoa juridica
    E solicitar manifestar o processo de renovacao de registro para pessoa juridica
    E analisar os dados da situacao do processo de renovacao de registro para pessoa juridica
    E validar os dados das etapas do processo de renovacao de registro para pessoa juridica
    E realizar uma nova manifestacao de decisao renovacao para registro para pessoa juridica
    Entao a mensagem "Operação efetuada com sucesso." será exibida