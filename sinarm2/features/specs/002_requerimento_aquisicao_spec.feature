#language: pt
@requerimento_aquisicao
Funcionalidade: Requerimento de aquisicao de arma de fogo

 
  @requerer_e_manifestar_aquisicao_PF
  @requerimento_aquisicao_PF
  Cenario: Requerimento de aquisicao de arma de fogo como pessoa física
    Quando solicitar a aquisicao de arma de fogo como pessoa fisica
    E preencher o formulário de aquisicao de pessoa fisica
    Entao deve visualizar a mensagem de sucesso de aquisicao para pessoa fisica

 
  @requerer_e_manifestar_aquisicao_PF
  @manifestar_processo_aquisicao_PF
  Cenario: Manifestar processo para aquisicao de arma de fogo de pessoa física
    Quando receber um processo para aquisicao de arma de fogo de pessoa fisica
    E solicitar manifestar o processo de aquisicao
    E analisar os dados da situacao do processo de aquisicao
    E validar os dados das etapas do processo de aquisicao
    E realizar uma nova manifestacao de decisao para aquisicao
    Entao deve ser gerado um numero de autorizacao de aquisicao


  @requerer_e_manifestar_aquisicao_PJ
  @requerimento_aquisicao_PJ
  Cenario: Requerimento de aquisicao de arma de fogo como pessoa jurídica
    Quando solicitar a aquisicao de arma de fogo como pessoa juridica
    E preencher o formulário de aquisicao de pessoa juridica
    Entao deve visualizar a mensagem de sucesso de aquisicao para pessoa juridica
  
  @requerer_e_manifestar_aquisicao_PJ
  @manifestar_processo_aquisicao_PJ
  Cenario: Manifestar processo para aquisicao de arma de fogo para pessoa jurídica
    Quando receber um processo para aquisicao de arma de fogo para pessoa jurídica
    E solicitar manifestar o processo de aquisicao para pessoa jurídica
    E analisar os dados da situacao do processo de aquisicao para pessoa jurídica
    E validar os dados das etapas do processo de aquisicao para pessoa jurídica
    E realizar uma nova manifestacao de decisao de aquisicao para pessoa jurídica
    Entao deve ser gerado um numero de autorizacao de aquisicao para pessoa juridica


  @campos_obrigatorios_aquisicao
  Esquema do Cenário: Verificar os campos obrigatórios do requerimento de aquisicao
    Quando solicitar a aquisicao de arma de fogo
    Mas não preencher os campos obrigatorios da aba <aba>
    Entao deve visualizar mensagem de obrigatoriedade

      Exemplos:
      | aba |
      | Identificacao para Cidadao e Cacador|
      | Identificacao para Servidor Publico |
      | Identificacao de Pessoa Juridica |
      | Dados da arma |
      | Declaracao de necessidade |
      # | Declaracao de necessidade PJ |
      | Termo de responsabilidade |


    @campos_invalidos_aquisicao
    Esquema do Cenário: Verificar os campos inválidos do requerimento de aquisicao
      Quando solicitar a aquisicao de arma de fogo
      Mas informar dados inválidos para os campos da aba <aba>
      Entao deve visualizar mensagem de campo inválido

        Exemplos:
        | aba |
        | Identificacao para Cidadao e Cacador|
        | Identificacao para Servidor Publico |
        | Identificacao de Pessoa Juridica |