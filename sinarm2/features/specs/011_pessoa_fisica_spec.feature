#language: pt
@manter_pessoa_fisica
Funcionalidade: Manter Pessoa Física

@incluir_pessoa_fisica_cidadao
  Cenario: Incluir pessoa física na categoria Cidadão
    Quando solicitar incluir Pessoa Física
    E informar os dados para a categoria "Cidadão"
    E solicitar salvar a inclusão
    Então a inclusão deve ser efetuada com sucesso
    E deve visualizar os dados da aba Detalhar Pessoa Física
    E deve visualizar os dados da aba Histórico de Alterações

  @incluir_pessoa_fisica_Servidor_publico
  Cenario: Incluir pessoa física na categoria Servidor Público
    Quando solicitar incluir Pessoa Física
    E informar os dados para a categoria "Servidor Público(Porte por prerrogativa de função)"
    E solicitar salvar a inclusão
    Então a inclusão deve ser efetuada com sucesso
    E deve visualizar os dados da aba Detalhar Pessoa Física
    E deve visualizar os dados da aba Histórico de Alterações

  @consultar_pessoa_fisica
  Cenario: Pesquisar pessoa física
    Quando solicitar a consulta de Pessoa Física
    E informar os dados para pesquisa
    Entao deve apresentar o registro correspodente aos dados pesquisados

  @consultar_pessoa_fisica_cpf
  Cenario: Pesquisar pessoa física por CPF
    Quando solicitar a consulta de Pessoa Física
    E informar o nº do CPF para pesquisa
    Entao deve apresentar o registro correspodente aos dados pesquisados

  @detalhar_pessoa_fisica
  Cenario: Detalhar pessoa física
    Quando solicitar a consulta de Pessoa Física
    E informar o nº do CPF para pesquisa
    E solicitar detalhar o registro
    Entao deve visualizar os dados da aba Detalhar Pessoa Física


