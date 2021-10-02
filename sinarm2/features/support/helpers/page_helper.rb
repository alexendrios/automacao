# Dir[File.join(File.dirname(__FILE__),
#   '../helpers/*_helper.rb')].each { |file| require file }

require_relative "file_helper.rb"

class PageHelper < SitePrism::Page
  include FileHelper

  def initialize
    @login = LoginPage.new
    @menu = MenuPage.new
  end

  element :captcha_input, 'input[id*="captcha"]'
  element :carregamento_ajax, 'img[src*="spinner.gif"]'
  element :nr_requerimento, :xpath, '//*[@class="tituloRelatorioT1"]/label[2]'
  element :nr_serie_arma, :xpath, '//*[@id="formDadosArma:listNumeroSeries:tb"]/tr/td/label'
  element :nr_serie_alterado, :xpath, '//*[@id="formDetalhar:camposDetalharArma"]/div/div[1]/div[1]/span[2]'
  element :body_home, "body.corpoPrincipal"

  def acessar_home_aba(usuario, senha)
    @login.load
    @login.logar(USER, PASS)
    click_link 'SINARM2'
    mudar_foco
    wait_until_body_home_visible
  end

  def acessar_home
    @login.load
    @login.logar(USER, PASS)
    click_link "SINARM2"
    mudar_foco
    wait_until_body_home_visible
  end

  def acessar_home_multiplas_abas
    @login.load
    @login.logar(USER, PASS)
    click_link "SINARM2"
    mudar_foco
    wait_until_body_home_visible
    execute_script "window.open('https://prehom.dpf.gov.br/sinarm-intranet/home.seam')"
  end

  def menu_consultar_PJ
    @menu.menu_pj.hover
    @menu.consulta_PJ.click
  end

  def menu_incluir_arma_por_revendedor
    @menu.menu_arma_de_fogo.hover
    @menu.incluir_arma_de_fogo.hover
    @menu.incluir_arma_por_revendedor.click
  end

  def menu_incluir_arma_por_proprietario
    @menu.menu_arma_de_fogo.hover
    @menu.incluir_arma_de_fogo.hover
    @menu.incluir_arma_por_proprietario.click
  end

  def menu_incluir_arma_por_ocorrencia
    @menu.menu_arma_de_fogo.hover
    @menu.incluir_arma_de_fogo.hover
    @menu.incluir_arma_por_ocorrencia.click
  end

  def menu_consultar_arma_fogo
    @menu.menu_arma_de_fogo.hover
    @menu.consultar_arma_fogo.click
  end

  def menu_consultar_porte_arma
    @menu.menu_arma_de_fogo.hover
    @menu.porte_arma_de_fogo.hover
    @menu.consultar_porte_arma.click
  end

  def menu_consultar_pessoa_fisica
    puts "\nAcessando menu Consultar Pessoa Física"
    @menu.menu_pessoa_fisica.hover
    @menu.consultar_pessoa_fisica.click
  end

  def menu_incluir_pessoa_fisica
    puts "\nAcessando menu Incluir Pessoa Física"
    @menu.menu_pessoa_fisica.hover
    @menu.incluir_pessoa_fisica.click
  end

  def menu_incluir_PJ
    @menu.menu_pj.hover
    @menu.incluir_PJ.click
  end

  def menu_consultar_guia_transito
    @menu.menu_arma_de_fogo.hover
    @menu.menu_guia_transito.hover
    @menu.consultar_guia_transito.click
  end

  def menu_confeccionar_registro_porte
    @menu.menu_arma_de_fogo.hover
    @menu.menu_confeccionar_registro_porte.click
  end

  def menu_incluir_porte_funcional
    @menu.menu_arma_de_fogo.hover
    @menu.porte_arma_de_fogo.hover
    @menu.incluir_porte.hover
    @menu.incluir_porte_funcional.click
  end

  def menu_manter_grupo_usuario
    puts "Acessando menu Manter Grupo de Usuario"
    @menu.menu_usuario.hover
    @menu.manter_grupo_usuario.click
  end

  def aguardar_carregamento_visible
    puts "Aguardando pdf"
    if (has_carregamento_ajax?(wait: 3))
      wait_until_carregamento_ajax_visible
    end
  end

  def nr_serie_random
    SecureRandom.random_number(36 ** 15).to_s(36).rjust(15, "0")
  end

  def nr_ocorrencia_random
    SecureRandom.random_number(10 ** 20).to_s(10).rjust(20, "0")
  end

  def gerar_nr_randomico(digitos)
    SecureRandom.random_number(10 ** digitos)
  end

  def mudar_foco
    switch_to_window(windows.last)
  end

  # Método provisório para solução da Captcha
  # def informar_captcha
  #   @mensagem = 'Digite o texto da imagem aqui e pressione "Enter". A automação prossiguirá em 15 segundos.'
  #   page.execute_script("document.getElementById(`#{captcha_input["id"]}`).value = prompt(`#{@mensagem}`);")
  #   sleep(10)
  # end

  def informar_captcha(execucao_inicial = 0)
    captcha_input.click

    puts "Aguardando preenchimento do Captcha..." if execucao_inicial.zero?

    puts "\nCaptcha Preenchido!" if captcha_input.value.size == 6

    until (captcha_input.value.size == 6)
      execucao_inicial = 1
      informar_captcha(execucao_inicial)
    end
  end

  def aguardar_carregamento
    if (has_carregamento_ajax?(wait: 3))
      puts "\nAguardando Carregamento..."
      wait_until_carregamento_ajax_invisible
    end
  end

  def armazena_numero_txt(nome_arquivo)
    puts "\nGravando número do requerimento"
    gravar_dados("features/arquivos/requerimentos/#{nome_arquivo}", nr_requerimento.text)
  end

  def armazena_nr_serie_arma(nome_arquivo)
    gravar_dados("features/arquivos/massa_teste/#{nome_arquivo}", nr_serie_arma.text)
  end

  def armazena_nr_serie_alterado(nome_arquivo)
    gravar_dados("features/arquivos/massa_teste/#{nome_arquivo}", nr_serie_alterado.text)
  end

  def informar_nr_cad(nome_arquivo)
    nome_arquivo.sub!(".txt", "")
    @numeros_cad = recuperar_dados("features/arquivos/#{nome_arquivo}.txt")

    numeros_cad_utilizados(nome_arquivo, @numeros_cad[0])

    @numeros_cad[0].chomp
  end

  def numeros_cad_utilizados(nome_arquivo, numero)
    atualizar_conteudo("features/arquivos/#{nome_arquivo}_utilizados.txt", numero)
  end
end
