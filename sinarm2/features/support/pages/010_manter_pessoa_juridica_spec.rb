class ManterPJPage < PageHelper
  element :categoria_pj_select, '#formPessoaJuridica\:categoriasPJ'
  element :cnpj_input, '#formPessoaJuridica\:txt-cnpj'
  element :razao_social_input, :xpath, '//*[text()[contains(.,"Razão Social:")]]/../input'
  element :uf_pj_select, '#formPessoaJuridica\:ufPessoaJuridica'
  element :municipio_pj_select, '#formPessoaJuridica\:cb-municipios'
  element :nr_sfpc_input, :xpath, '//*[text()[contains(.,"N° SFPC:")]]/../input'
  element :uf_sfpc_select, :xpath, '//*[text()[contains(.,"UF/SFPC:")]]/../select'
  element :btn_pesquisar, 'input[value="Pesquisar"]'
  element :btn_detalhar_registro, 'a[title="Detalhar Registro"]'
  element :aba_estoque_armas, '#formDetalhaPJ\:EstoqueArmasPJ_lbl'
  element :aba_vendas, '#formDetalhaPJ\:VendaArmasPJ_lbl'

  #ELEMENTOS FORMULÁRIO DE INCLUSÃO DE PESSOA JURÍDICA
  element :incluir_categoria_pj_select, '#formPessoaJuridica\:categoriasPJ'
  element :incluir_cnpj_input, '#formPessoaJuridica\:cnpjPJ'
  element :incluir_razao_social_input, '#formPessoaJuridica\:razaoSocPJ'
  element :incluir_nr_sfpc_input, '#formPessoaJuridica\:noSfpc'
  element :incluir_cep_input, '#formPessoaJuridica\:cepPJ'
  element :incluir_logradouro_input, '#formPessoaJuridica\:logradouroPJ'
  element :incluir_complemento_input, '#formPessoaJuridica\:complementoEndPJ'
  element :incluir_uf_select, '#formPessoaJuridica\:ufPJ'
  element :incluir_ddd_input, :xpath, '//*[text()[contains(.,"Telefone Comercial:")]]/../input[1]'
  element :incluir_telefone_input, :xpath, '//*[text()[contains(.,"Telefone Comercial:")]]/../input[2]'
  element :incluir_uf_sfpc_select, '#formPessoaJuridica\:idUfSfpc'
  element :incluir_tipo_select, '#formPessoaJuridica\:tipoEndPJ'
  element :incluir_numero_input, '#formPessoaJuridica\:numeroEndPJ'
  element :incluir_bairro_input, '#formPessoaJuridica\:bairroEndPJ'
  element :incluir_municipio_select, '#formPessoaJuridica\:municipio-pj'
  element :email_input, "input[id*='email']"
  element :btn_salvar, '#formPessoaJuridica\:btnSalvarPJ'

  def acessar_consulta_pj
    acessar_home
    menu_consultar_PJ
  end

  def acessar_incluir_pj
    acessar_home
    menu_incluir_PJ
  end

  def seleciona_categoria(categoria)
    categoria_pj_select.select(categoria)
  end

  def seleciona_categoria(categoria)
    categoria_pj_select.select(categoria)
  end

  def seleciona_uf(uf)
    uf_pj_select.select(uf)
  end

  def seleciona_municipio(municipio)
    municipio_pj_select.select(municipio)
  end

  def seleciona_categoria_incluir(categoria)
    incluir_categoria_pj_select.select(categoria)
  end

  def seleciona_uf_incluir(uf)
    incluir_uf_select.select(uf)
  end

  def seleciona_uf_sfpc_incluir(uf_sfpc)
    incluir_uf_sfpc_select.select(uf_sfpc)
  end

  def seleciona_tipo_incluir(tipo)
    incluir_tipo_select.select(tipo)
  end

  def seleciona_municipio_incluir(municipio)
    incluir_municipio_select.select(municipio)
  end

  def incluir_dados_pessoa_juridica
    seleciona_categoria_incluir("Fabricante/Importador")

    @cnpj = Faker::Company.brazilian_company_number
    @razao_social = Faker::Company.name
    incluir_cnpj_input.click.set(@cnpj)
    incluir_razao_social_input.click.set(@razao_social)
    ## Salvando os dados de cnpj e razão social
    gravar_dados("features/arquivos/massa_teste/cnpj_fabricante.txt", @cnpj)
    gravar_dados("features/arquivos/massa_teste/razao_social_fabricante.txt", @razao_social)

    incluir_nr_sfpc_input.click.set(gerar_nr_randomico(5))
    incluir_cep_input.click.set("70327900")
    incluir_logradouro_input.click.set(Faker::Address.street_name)
    incluir_complemento_input.click.set(Faker::Address.community)
    seleciona_uf_incluir("DF")
    incluir_ddd_input.click.set("61")
    incluir_telefone_input.click.set(gerar_nr_randomico(9))
    seleciona_uf_sfpc_incluir("DF")
    seleciona_tipo_incluir("Comercial")
    incluir_numero_input.click.set(gerar_nr_randomico(2))
    incluir_bairro_input.click.set("Asa sul")
    seleciona_municipio_incluir("Brasília")
    email_input.set(Faker::Internet.email)
  end

  def preencher_dados_consulta_pj
    @cnpj = recuperar_dados("features/arquivos/massa_teste/cnpj_fabricante.txt")
    cnpj_input.click.set(@cnpj[0].to_s)
    @razao_social = recuperar_dados("features/arquivos/massa_teste/razao_social_fabricante.txt")
    razao_social_input.click.set(@razao_social[0].to_s)
    seleciona_categoria("Fabricante/Importador")
    seleciona_uf("DF")
    seleciona_municipio("Brasília")
    uf_sfpc_select.select("DF")
    btn_pesquisar.click
  end

  def preencher_dados_consulta_pj_poucos_parametros
    @cnpj = recuperar_dados("features/arquivos/massa_teste/cnpj_fabricante.txt")
    cnpj_input.click.set(@cnpj[0].to_s)
    btn_pesquisar.click
  end

  def preencher_dados_consulta_taurus
    seleciona_categoria("Fabricante/Importador")
    cnpj_input.click.set("92781335000102")
    razao_social_input.click.set("TAURUS ARMAS SA")
    seleciona_uf("RS")
    seleciona_municipio("São Leopoldo")
    btn_pesquisar.click
  end

  def incluir_dados_pessoa_juridica_revendedor
    seleciona_categoria_incluir("Revendedor")

    @cnpj = Faker::Company.brazilian_company_number
    @razao_social = Faker::Company.name
    incluir_cnpj_input.click.set(@cnpj)
    incluir_razao_social_input.click.set(@razao_social)
    ## Salvando os dados de cnpj e razão social
    gravar_dados("features/arquivos/massa_teste/cnpj_revendedor.txt", @cnpj)
    gravar_dados("features/arquivos/massa_teste/razao_social_revendedor.txt", @razao_social)

    incluir_nr_sfpc_input.click.set(gerar_nr_randomico(5))
    incluir_cep_input.click.set("70327900")
    incluir_logradouro_input.click.set(Faker::Address.street_name)
    incluir_complemento_input.click.set(Faker::Address.community)
    seleciona_uf_incluir("DF")
    incluir_ddd_input.click.set("61")
    incluir_telefone_input.click.set(gerar_nr_randomico(9))
    seleciona_uf_sfpc_incluir("DF")
    seleciona_tipo_incluir("Comercial")
    incluir_numero_input.click.set(gerar_nr_randomico(2))
    incluir_bairro_input.click.set("Asa sul")
    seleciona_municipio_incluir("Brasília")
    email_input.set(Faker::Internet.email)
  end
end
