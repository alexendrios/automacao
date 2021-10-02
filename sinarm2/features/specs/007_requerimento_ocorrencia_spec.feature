#language: pt
@requerimento_de_ocorrencia_de_arma_de_fogo
Funcionalidade: Requerimento de Ocorrência de Arma de Fogo

  @requerer_e_manifestar_ocorrencia_PF
  @requerimento_ocorrencia
  Cenario: Requerimento de ocorrência de arma de fogo de pessoa física
    Quando solicitar o registro de ocorrência de arma de fogo de pessoa física
    E preencher o formulário de ocorrência de arma de fogo de pessoa física
    Entao deve visualizar o requerimento de ocorrência de arma de fogo de pessoa física

  @requerer_e_manifestar_ocorrencia_PF
  @manifestar_processo_ocorrencia_PF
  Cenario: Manifestar processo de ocorrência de arma de fogo para pessoa fisica
    Quando receber um processo de ocorrência de arma de fogo para pessoa fisica
    E solicitar manifestar o processo de ocorrência para pessoa fisica
    E analisar os dados da situacao do processo de ocorrência para pessoa fisica
    E validar os dados das etapas do processo de ocorrência para pessoa fisica
    E realizar uma nova manifestacao de decisao de ocorrência para pessoa fisica
    Entao visualize "Operação efetuada com sucesso."

  @requerer_e_manifestar_ocorrencia_PJ
  @requerimento_ocorrencia_PJ
  Cenario: Requerimento de ocorrência de arma de fogo de pessoa juridica
    Quando solicitar o registro de ocorrência de arma de fogo de pessoa juridica
    E preencher o formulário de ocorrência de arma de fogo de pessoa juridica
    Entao deve visualizar o requerimento de ocorrência de arma de fogo de pessoa juridica

   @requerer_e_manifestar_ocorrencia_PJ
  @manifestar_processo_ocorrencia_PJ
  Cenario: Manifestar processo de ocorrência de arma de fogo para pessoa juridica
    Quando receber um processo de ocorrência de arma de fogo para pessoa juridica
    E solicitar manifestar o processo de ocorrência para pessoa juridica
    E analisar os dados da situacao do processo de ocorrência para pessoa juridica
    E validar os dados das etapas do processo de ocorrência para pessoa juridica
    E realizar uma nova manifestacao de decisao de ocorrência para pessoa juridica
    Entao será exibido "Operação efetuada com sucesso."