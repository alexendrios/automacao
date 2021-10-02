# language: pt
@validacao_de_recursos_concorrentes
Funcionalidade: Validação de recursos concorrentes

  @requerimento_aquisicao_PF_concorrencia
  Cenario: Requerimento de aquisicao de arma de fogo como pessoa física para recursos concorrentes
    Quando solicitar a aquisicao de arma de fogo como pessoa fisica para recursos concorrentes
    E preencher o formulário de aquisicao de pessoa fisica para recursos concorrentes
    Entao deve visualizar a mensagem de sucesso de aquisicao para pessoa fisica para recursos concorrentes

 @concorrencia_nova_aba_tela_verificacao
  Cenario: Alteração concorrente em nova aba na tela de verificação nas etapas do processo de aquisição de arma de fogo
    Dado que inicie uma sessão com o usuario "toledo.rct" e senha "ctidpf"
    Quando acessar a tela de verificação das etapas do processo
    Mas em uma nova aba do navegador acessar a mesma tela e clicar em salvar
    Quando retornar para a primeira aba e novamente clicar em salvar
    Entao deve visualizar a mensagem de alerta: "Outro usuário modificou este registro enquanto você o editava. Para evitar maiores problemas, não foi possível salvar suas alterações."

  @concorrencia_nova_sessao_tela_verificacao
  Cenario: Alteração concorrente em nova sessao na tela de verificação nas etapas do processo de aquisição de arma de fogo
    Dado que inicie uma sessão com o usuario "toledo.rct" e senha "ctidpf"
    Quando acessar a tela de verificação das etapas do processo
    Mas em uma nova sessão com o usuario "solange.sbm" e senha "Berto@10" acessar a mesma tela e clicar em salvar
    E tentar salvar as alterações na sessão inicial
    Entao deve visualizar a mensagem de alerta: "Outro usuário modificou este registro enquanto você o editava. Para evitar maiores problemas, não foi possível salvar suas alterações."

  @CID_URL_incluir_PF
  Cenário: Validar CID único na págia para incluir Pessoa Física
    Dado que esteja na página para incluir Pessoa Física
    E verifico que a URL possui um numero de CID
    Quando acessar a mesma URL com o mesmo numero de CID em uma nova aba do navegador
    Entao o acesso na nova aba deve ser redirecionada para a tela home