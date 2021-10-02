class PessoaFisicaPage < PageHelper
  element :cpf_input, '#formPessoaFisica\:txt-cpf'
  element :nome_input, :xpath, '//span[text()="Nome:"]/../input'
  element :mae_input, :xpath, '//span[text()="Nome da Mãe:"]/../input'
  element :data_nascimento, 'input[id*="InputDate"]'
  element :numero_rg, :xpath, '//span[text()="Número do RG:"]/../input'
  element :uf_rg, '#formPessoaFisica\:ufExpeRG'
  element :btn_pesquisar, 'input[value="Pesquisar"]'
  element :resultado_pesquisa, '#formPessoaFisica\:tabelaPessoaFisica\:tb'
  element :btn_detalhar, 'img[title="Detalhar Registro"]'
  element :tela_detalhamento, 'div[id*="tela-resultado"]'
  element :aba_historico, :xpath, '//td[text()="Histórico de Alterações"]'
  element :table_historico, 'table[id*="historicoPessoaFisica"].dr-table'

  element :incluir_categorias_Pf, "#categoriasPF"
  element :incluir_nome, "#nomePF"
  element :incluir_CPF, "#numeroCPF"
  element :incluir_mae, "#nomeMae"
  element :incluir_pai, "#nomePaiPf"
  element :incluir_data_nasc, "#dataNascInputDate"
  element :incluir_sexo, "#sex"
  element :incluir_pais_nasc, "#paisNasc"
  element :incluir_uf_nasc, "#ufNasc"
  element :incluir_municipio_nasc, "#municNasc"
  element :incluir_rg, "#numRG"
  element :incluir_data_rg, "#dtExpRGInputDate"
  element :incluir_orgao_rg, "#orgaoExpRG"
  element :incluir_uf_rg, "#ufExpeRG"
  element :inclir_estado_civil, "#estadoCivil"
  element :incluir_titulo_eleitor, "#tituloEle"
  element :incluir_profissao, "#prof"
  element :incluir_email, "#email"
  element :incluir_cep_res, "#cepRes"
  element :incluir_tipo_endereco_res, "#tipoEndResidencial"
  element :incluir_logradouro_res, "#logradouroRes"
  element :incluir_numero_res, "#numRes"
  element :incluir_complemento_res, "#complRes"
  element :incluir_bairro_res, "#bairroRes"
  element :incluir_uf_res, "#ufRes"
  element :incluir_municipio_res, "#municipioRes"
  element :incluir_ddd_fixo, "#dddTelFixoComerRes"
  element :incluir_tel_fixo, "#telFixoComerRes"
  element :incluir_ddd_cel, "#dddTelCelRes"
  element :incluir_celular, "#telCelRes"
  element :incluir_orgao_ocupacao, "#orgaoOcup"
  element :incluir_cnpj_orgao_ocupacao, "#cnpjOrgao"
  element :incluir_nome_orgao_ocupacao, "#nomeOrgao"

  element :btn_salvar, 'input[value*="Salvar"]'

  def consultar_pessoa_fisica
    acessar_home
    menu_consultar_pessoa_fisica
  end

  def informar_dados_pesquisa
    puts "\nPreenchendo filtros da pesquisa"

    @cpf = recuperar_dados("features/arquivos/massa_teste/cpf_cidadao.txt")
    @nome = recuperar_dados("features/arquivos/massa_teste/nome_cidadao.txt")
    @nome_mae = recuperar_dados("features/arquivos/massa_teste/nome_mae_cidadao.txt")
    @rg = recuperar_dados("features/arquivos/massa_teste/rg_cidadao.txt")

    cpf_input.click.set(@cpf[0].to_s)
    nome_input.click.set(@nome[0].to_s)
    mae_input.click.set(@nome_mae[0].to_s)
    data_nascimento.click.set("10101990")
    numero_rg.click.set(@rg[0].to_s)
    uf_rg.select("DF")

    puts "\nClicando em Pesquisar"
    btn_pesquisar.click
  end

  def informar_cpf_pesquisa
    @cpf = recuperar_dados("features/arquivos/massa_teste/cpf_cidadao.txt")
    cpf_input.click.set(@cpf[0].to_s)

    puts "\nClicando em Pesquisar"
    btn_pesquisar.click
  end

  def validar_registro_encontrado
    puts "\nAguardando resultado da pesquisa..."
    aguardar_carregamento
    wait_until_resultado_pesquisa_visible
  end

  def visualizar_aba_detalhar
    wait_until_tela_detalhamento_visible
  end

  def visualizar_aba_historico
    aba_historico.click
    wait_until_table_historico_visible
  end

  #--------------------------------#
  # INCLUIR PESSOA FÍSICA
  #-------------------------------#
  def incluir_pessoa_fisica
    acessar_home
    menu_incluir_pessoa_fisica
  end

  def informar_dados_inclusao(categoria)
    if (categoria == "Cidadão")
      incluir_categorias_Pf.select("Cidadão")
      dados_pessoais_cidadao
    elsif (categoria == "Caçador de Subsistência")
      incluir_categorias_Pf.select("Caçador de Subsistência")
      dados_pessoais_cacador
    elsif (categoria == "Servidor Público(Porte por prerrogativa de função)")
      incluir_categorias_Pf.select("Servidor Público(Porte por prerrogativa de função)")
      dados_pessoais_servidor_publico
    elsif (categoria == "Segurança de Dignitários")
      incluir_categorias_Pf.select("Segurança de Dignitários")
      dados_pessoais_seguranca
    end
  end

  def dados_pessoais_cidadao
    puts "\nPreenchendo dados pessoais do 'Cidadão' "

    @nome_cidadao = Faker::Name.masculine_name
    @cpf_cidadao = Faker::IDNumber.brazilian_citizen_number
    @nome_mae_cidadao = Faker::Name.feminine_name
    @nome_pai_cidadao = Faker::Name.masculine_name
    @email_cidadao = Faker::Internet.email
    @nome_bairro_cidadao = Faker::Address.street_name
    @rg_cidadao = gerar_nr_randomico(8)

    gravar_dados("features/arquivos/massa_teste/nome_cidadao.txt", @nome_cidadao)
    gravar_dados("features/arquivos/massa_teste/cpf_cidadao.txt", @cpf_cidadao)
    gravar_dados("features/arquivos/massa_teste/nome_mae_cidadao.txt", @nome_mae_cidadao)
    gravar_dados("features/arquivos/massa_teste/rg_cidadao.txt", @rg_cidadao)

    incluir_nome.click.set(@nome_cidadao)
    incluir_CPF.click.set(@cpf_cidadao)
    incluir_mae.click.set(@nome_mae_cidadao)
    incluir_pai.click.set(@nome_pai_cidadao)
    incluir_data_nasc.click.set("10101990")
    incluir_sexo.select("Masculino")
    incluir_pais_nasc.select("Brasil")
    incluir_uf_nasc.select("DF")
    incluir_municipio_nasc.select("Brasília")
    incluir_rg.click.set(@rg_cidadao)
    incluir_data_rg.click.set("24/05/2001")
    incluir_orgao_rg.click.set("SSP")
    incluir_uf_rg.select("DF")
    inclir_estado_civil.select("Solteiro")
    incluir_titulo_eleitor.click.set(gerar_nr_randomico(12))
    incluir_profissao.select("ADMINISTRADOR")
    incluir_email.click.set(@email_cidadao)
    incluir_cep_res.click.set("70327900")
    incluir_tipo_endereco_res.select("Residencial")
    incluir_logradouro_res.click.set("Rua 7")
    incluir_numero_res.click.set(gerar_nr_randomico(3))
    incluir_complemento_res.click.set("Complemento")
    incluir_bairro_res.click.set(@nome_bairro_cidadao)
    incluir_uf_res.select("DF")
    incluir_municipio_res.select("Brasília")
    incluir_ddd_fixo.click.set("61")
    incluir_tel_fixo.click.set(gerar_nr_randomico(8))
    incluir_ddd_cel.click.set("61")
    incluir_celular.click.set(gerar_nr_randomico(9))
  end

  def dados_pessoais_cacador
    puts "\nPreenchendo dados pessoais do 'Caçador' "
  end

  def dados_pessoais_servidor_publico
    puts "\nPreenchendo dados pessoais do 'Servidor Público' "

    @nome_servidor_publico = Faker::Name.name
    @cpf_servidor_publico = Faker::IDNumber.brazilian_citizen_number
    @nome_mae_servidor_publico = Faker::Name.feminine_name
    @nome_pai_servidor_publico = Faker::Name.masculine_name
    @email_servidor_publico = Faker::Internet.email
    @nome_bairro_servidor_publico = Faker::Address.street_name
    @rg_servidor_publico = gerar_nr_randomico(8)

    gravar_dados("features/arquivos/massa_teste/nome_servidor_publico.txt", @nome_servidor_publico)
    gravar_dados("features/arquivos/massa_teste/cpf_servidor_publico.txt", @cpf_servidor_publico)
    gravar_dados("features/arquivos/massa_teste/nome_mae_servidor_publico.txt", @nome_mae_servidor_publico)
    gravar_dados("features/arquivos/massa_teste/rg_servidor_publico.txt", @rg_servidor_publico)

    incluir_nome.click.set(@nome_servidor_publico)
    incluir_CPF.click.set(@cpf_servidor_publico)
    incluir_mae.click.set(@nome_mae_servidor_publico)
    incluir_pai.click.set(@nome_pai_servidor_publico)
    incluir_data_nasc.click.set("10101990")
    incluir_sexo.select("Masculino")
    incluir_pais_nasc.select("Brasil")
    incluir_uf_nasc.select("DF")
    incluir_municipio_nasc.select("Brasília")
    incluir_rg.click.set(@rg_servidor_publico)
    incluir_data_rg.click.set("24/05/2001")
    incluir_orgao_rg.click.set("SSP")
    incluir_uf_rg.select("DF")
    inclir_estado_civil.select("Solteiro")
    incluir_titulo_eleitor.click.set(gerar_nr_randomico(12))
    incluir_profissao.select("ADMINISTRADOR")
    incluir_email.click.set(@email_servidor_publico)
    incluir_cep_res.click.set("70327900")
    incluir_tipo_endereco_res.select("Residencial")
    incluir_logradouro_res.click.set("Rua 7")
    incluir_numero_res.click.set(gerar_nr_randomico(3))
    incluir_complemento_res.click.set("Complemento")
    incluir_bairro_res.click.set(@nome_bairro_servidor_publico)
    incluir_uf_res.select("DF")
    incluir_municipio_res.select("Brasília")
    incluir_ddd_fixo.click.set("61")
    incluir_tel_fixo.click.set(gerar_nr_randomico(8))
    incluir_ddd_cel.click.set("61")
    incluir_celular.click.set(gerar_nr_randomico(9))
    incluir_orgao_ocupacao.select("Policial Federal")
    incluir_cnpj_orgao_ocupacao.click.set("00394494001450")
    incluir_nome_orgao_ocupacao.click.set("Departamento De Policia Federal")
    incluir_nome_orgao_ocupacao.click.set("Departamento De Policia Federal")
  end

  def dados_pessoais_seguranca
    puts "\nPreenchendo dados pessoais do 'Segurança' "

    @nome = Faker::Name.name

    incluir_nome.click.set(@nome)
    incluir_CPF.click.set(Faker::IDNumber.brazilian_citizen_number)
    incluir_mae.click.set(Faker::Name.feminine_name)
    incluir_pai.click.set(Faker::Name.masculine_name)
    incluir_data_nasc.click.set("10101990")
    incluir_sexo.select("Masculino")
    incluir_pais_nasc.select("Brasil")
    incluir_uf_nasc.select("DF")
    incluir_municipio_nasc.select("Brasília")
    incluir_rg.click.set(gerar_nr_randomico(8))
    incluir_data_rg.click.set("24/05/2001")
    incluir_orgao_rg.click.set("SSP")
    incluir_uf_rg.select("DF")
    inclir_estado_civil.select("Solteiro")
    incluir_titulo_eleitor.click.set(gerar_nr_randomico(12))
    incluir_profissao.select("ADMINISTRADOR")
    incluir_email.click.set(Faker::Internet.email)
    incluir_cep_res.click.set(gerar_nr_randomico(8))
    incluir_tipo_endereco_res.select("Residencial")
    incluir_logradouro_res.click.set("Rua 7")
    incluir_numero_res.click.set(gerar_nr_randomico(3))
    incluir_complemento_res.click.set("Complemento")
    incluir_bairro_res.click.set(Faker::Address.street_name)
    incluir_uf_res.select("DF")
    incluir_municipio_res.select("Brasília")
    incluir_ddd_fixo.click.set("61")
    incluir_tel_fixo.click.set(gerar_nr_randomico(8))
    incluir_ddd_cel.click.set("61")
    incluir_celular.click.set(gerar_nr_randomico(9))
  end
end
