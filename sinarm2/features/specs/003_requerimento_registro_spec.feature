#language: pt
@requerimento_registro
Funcionalidade: Requerimento de registro de arma de fogo


  @requerer_e_manifestar_registro_PF_sem_autorizacao
  @requerimento_registro_PF_sem_autorizacao
  Cenario: Requerimento de registro de arma de fogo de pessoa física sem autorizacao
    Quando solicitar o registro de arma de fogo como pessoa fisica sem autorizacao
    E preencher o formulário de registro de arma de fogo de pessoa fisica sem autorizacao
    Entao deve visualizar a mensagem de sucesso de registro de arma de fogo para pessoa fisica sem autorizacao

  @requerer_e_manifestar_registro_PF_sem_autorizacao
  Cenario: Manifestar processo para registro de arma de fogo de pessoa física sem autorizacao de aquisicao
   Quando receber um processo para registro de arma sem autorizacao de aquisicao
    E solicitar manifestar o processo de registro de arma sem autorizacao de aquisicao
    E analisar os dados da situacao do processo de registro de arma sem autorizacao de aquisicao
    E validar os dados das etapas do processo de registro de arma sem autorizacao de aquisicao
    E realizar uma nova manifestacao de decisao de registro de arma sem autorizacao de aquisicao
    Entao deve mostrar a mensagem "Operação efetuada com sucesso."

  @requerer_e_manifestar_registro_PF_com_autorizacao
  @requerimento_registro_PF_com_autorizacao
  Cenario: Requerimento de registro de arma de fogo de pessoa física com autorizacao
    Quando solicitar o registro de arma de fogo como pessoa fisica com autorizacao
    E preencher o formulário de registro de arma de fogo de pessoa fisica com autorizacao
    Entao deve visualizar a mensagem de sucesso de registro de arma de fogo para pessoa fisica com autorizacao

  @requerer_e_manifestar_registro_PF_com_autorizacao
  @manifestar_processo_registro_PF_com_autorizacao
  Cenario: Manifestar processo para registro de arma de fogo de pessoa física
    Quando receber um processo para registro de arma de fogo de pessoa fisica
    E solicitar manifestar o processo de registro
    E analisar os dados da situacao do processo de registro
    E validar os dados das etapas do processo de registro
    E realizar uma nova manifestacao de decisao para registro
    Entao deve exibir "Operação efetuada com sucesso."


  # # Este cenário abrange as categorias de Orgão Publico com ou sem taxa,
  # # devendo alterar a massa de teste
  # @requerer_e_manifestar_registro_PJ_sem_autorizacao
  # @requerimento_registro_PJ_sem_autorizacao
  # Cenario: Requerimento de registro de arma de fogo como pessoa jurídica sem autorizacao
  #   Quando solicitar o registro de arma de fogo como pessoa juridica sem autorizacao
  #   E preencher o formulário de registro de arma de fogo de pessoa juridica sem autorizacao
  #   Entao deve visualizar a mensagem de sucesso de registro de arma de fogo para pessoa juridica sem autorizacao

  # # @TODO: Falta implementar steps
  # @requerer_e_manifestar_registro_PJ_sem_autorizacao
  # @manifestar_processo_registro_PJ_sem_autorizacao
  # Cenario: Manifestar processo para registro de arma de fogo de pessoa jurídica sem autorizacao
  #   Quando receber um processo para registro de arma de fogo de pessoa jurídica sem autorizacao
  #   E solicitar manifestar o processo de registro para pessoa jurídica sem autorizacao
  #   E analisar os dados da situacao do processo de registro para pessoa jurídica sem autorizacao
  #   E validar os dados das etapas do processo de registro para pessoa jurídica sem autorizacao
  #   E realizar uma nova manifestacao de decisao de registro pessoa jurídica sem autorizacao
  #   Entao a seguinte mensagem será exibida:"Operação efetuada com sucesso."

  # Este cenário abrange as categorias de Empresa Comercial,
  # Fabricante/Importador, Revendedor e "Outras" devendo alterar a massa de teste
  @requerer_e_manifestar_registro_PJ_com_autorizacao
  @requerimento_registro_PJ_com_autorizacao
  Cenario: Requerimento de registro de arma de fogo como pessoa jurídica com autorizacao
    Quando solicitar o registro de arma de fogo como pessoa juridica com autorizacao
    E preencher o formulário de registro de arma de fogo de pessoa juridica com autorizacao
    Entao deve visualizar a mensagem de sucesso de registro de arma de fogo para pessoa juridica com autorizacao

  @requerer_e_manifestar_registro_PJ_com_autorizacao
  @manifestar_processo_registro_PJ_com_autorizacao
  Cenario: Manifestar processo para registro de arma de fogo de pessoa jurídica com autorizacao
    Quando receber um processo para registro de arma de fogo de pessoa jurídica com autorizacao
    E solicitar manifestar o processo de registro para pessoa jurídica com autorizacao
    E analisar os dados da situacao do processo de registro para pessoa jurídica com autorizacao
    E validar os dados das etapas do processo de registro para pessoa jurídica com autorizacao
    E realizar uma nova manifestacao de decisao de registro pessoa jurídica com autorizacao
    Entao a seguinte mensagem será exibida:"Operação efetuada com sucesso."