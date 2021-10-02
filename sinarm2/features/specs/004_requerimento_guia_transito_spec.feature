#language: pt
@requerimento_de_guia_de_transito
Funcionalidade: Requerimento de Guia de Trânsito

  @requerer_e_manifestar_guia_PF
  @requerimento_guia_de_transito_PF
  Cenario: Requerimento de Guia de Trânsito para pessoa física
    Quando solicitar a Guia de Trânsito para pessoa física
    E preencher o formulário de Guia de Trânsito para pessoa física
    Entao deve visualizar o requerimento de Guia de Trânsito para pessoa física

  @requerer_e_manifestar_guia_PF
  @manifestar_processo_guia_transito_PF
  Cenario: Manifestar processo de guia de transito de arma de fogo para pessoa fisica
    Quando receber um processo de guia de transito de arma de fogo para pessoa fisica
    E solicitar manifestar o processo de guia de transito
    E analisar os dados da situacao do processo de guia de transito
    E validar os dados das etapas do processo de guia de transito
    E realizar uma nova manifestacao de decisao para guia de transito
    Entao deve ser gerado o Código da Guia de Trânsito

  @requerer_e_manifestar_guia_PJ
  @requerimento_guia_de_transito_PJ
  Cenario: Requerimento de Guia de Trânsito para pessoa jurídica
    Quando solicitar a Guia de Trânsito para pessoa jurídica
    E preencher o formulário de Guia de Trânsito para pessoa jurídica
    Entao deve visualizar o requerimento de Guia de Trânsito para pessoa jurídica
  
   @requerer_e_manifestar_guia_PJ
  @manifestar_processo_guia_transito_PJ
  Cenario: Manifestar processo de guia de transito de arma de fogo para pessoa juridica
    Quando receber um processo de guia de transito de arma de fogo para pessoa juridica
    E solicitar manifestar o processo de guia de transito para pessoa juridica
    E analisar os dados da situacao do processo de guia de transito para pessoa juridica
    E validar os dados das etapas do processo de guia de transito para pessoa juridica
    E realizar uma nova manifestacao de decisao para guia de transito para pessoa juridica
    Entao deve ser gerado o Código da Guia de Trânsito para pessoa juridica