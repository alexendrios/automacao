class EstruturaSonar < SitePrism::Page
  def initialize
    #Classe Responsável pelo log da aplicação
    @log = Log.new

    #Mapeamento tela principal do login da aplicação
    @user_input = "#login"
    @pass_input = "#password"
    @button_login = "Log in"

    #mapeamento referente a busca do projeto [Alvo]
    @busca_input = "input.navbar-search-input.js-search-input"
    @auto_complete = "#global-navigation > div > div > ul.global-navbar-menu.pull-right > li.dropdown.navbar-search.open > div > ul > li.active > a > span.navbar-search-item-match"

    #Mapeamento referente a visualizaçao dos indicadores para extraçoes da informações
    @activity_select = "Activity"
    @label_coverage = "#container > div > div > div > div > div.overview-main.page-main > div.overview-domains-list > div:nth-child(3) > div.overview-domain-panel > div.overview-domain-nutshell > div.overview-domain-measures > div:nth-child(1) > div:nth-child(2) > div.overview-domain-measure-label"
    @coverage_button_select = "#container > div > div > div > div > div.overview-main.page-main > div.overview-domains-list > div:nth-child(3) > div.overview-domain-panel > div.overview-domain-nutshell > div.overview-domain-measures > div:nth-child(1) > div:nth-child(2) > div.overview-domain-measure-label > a > svg"

    #Variável respomsável pelo log da aplicação
    @status = ""
  end

  #Principais métodos da Aplicação

  def intabilidade_aplicacao
    "\nElementos não visíveis \nPossível instabilidade da Aplicação\n....\nWEBSCRAP Abortado\n"
  end
  def listar_build
    find(@lista_build).text
  end

  def logar(usuario, senha)
    @status += "\n....\nLogar na aplicação\n...."
    if (page.has_text? "sonar.intranet.bb.com.br") == true
      @status += "\nAplicação Indisponível\nWEBSCRAP Abortado\n"
      @log.log_login @status
      exit
    else
      if page.has_selector? (@user_input)
        find(@user_input).set usuario
        find(@pass_input).set senha
        click_button @button_login
        @status += "\nUsuário: #{usuario} - Logado\n"
      else
        @status += intabilidade_aplicacao
        @log.log_login @status
        exit
      end
    end
    @log.log_login @status
  end

  def buscar_projeto(nome_projeto)
    @status = "\n....\nBuscando projeto para a Análise\n...."
    if page.has_selector? (@busca_input)
      find(@busca_input).set nome_projeto
      @status += "\nProjeto: '#{nome_projeto}' em Análise\n...."
      if ((find(".dropdown-menu").has_text? nome_projeto) == true)
        find(@auto_complete).click
        @log.log_registros @status
        return true
      else
        @status += "Projeto não existe no Sonar"
        @log.log_registros @status
        return false
      end
    else
      @status += intabilidade_aplicacao
      @log.log_registros @status
      exit
    end
  end

  def menu_visualizacao(opcao)
    begin
      @status = "\nIndicador a ser Analisado\n#{opcao}\n"
      case opcao
      when "Issues"
        find_link(@activity_select).click
        @status += "* Dados em processo de Extração\n"
      when "Coverage"
        find(@label_coverage).click
        find(@coverage_button_select).click
        @status += "* Dados em processo de Extração\n"
        @log.log_registros @status
      end
    rescue => exception
      @status += "#{intabilidade_aplicacao}\n#{exception.message}" 
      exit
    end
  end
end
