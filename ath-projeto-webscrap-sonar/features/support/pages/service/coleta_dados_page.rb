class ColetaDados < SitePrism::Page
  def initialize
    #Construtor responsável pelos Objetos [Essenciais para a Criação do Arquivo .csv]

    #Classe Responsável pelo log da aplicação
    @log = Log.new

    @aplicacao = EstruturaSonar.new
    @limpeza_dados = TratamentoDados.new
    @analise_dados = AnaliseDados.new
    @dados_arquivos = InformacaoArquivo.new
    @tools = Tools.new
    @dashboard_projeto = "#context-navigation > div > div > h1 > span > a"
    @lista_ul_build = "#project-activity > div > div.layout-page-side-outer.project-activity-page-side-outer.boxed-group > ul"
    @Tabela_indicador = ".bubble-popup"

    #Variável respomsável pelo log da aplicação
    @status = ""
  end

  def logar_aplicacao(parametros)

    #Método de Login [SONAR]
    visit " "
    @aplicacao.logar parametros[0], parametros[1]
  end

  def listar_dados_projetos(arquivo)

    # Método responsável pela coleta dos dados referente
    #   ao arquivo de input, após tratamento será retornado
    #   - Lista de todo o conteúdo do arquivo sem cabeçalho
    #   - Lista contendo somente os projetos
    dados = @tools.leitura arquivo
    info_projetos = dados.split("@@")
    lista = []
    projetos = []
    i = 0
    begin
      while i < info_projetos.size
        lista << info_projetos[i].split(";")
        i += 1
      end
      lista.each do |linha|
        projetos << linha[1]
      end
      @status = "* Lendo o arquivo da Lista de Projetos"
      @log.log_registros @status
      return projetos.uniq, lista
    rescue => exception
      @status = "Erro ao Realizar a leitura do Arquivo de Projetos #{arquivo}\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
  end

  def listar_projetos_nao_sonar(projetos) 
    lista =[]
    projetos.each do |projeto| 
      retorno = exibir_aplicacao projeto
      if retorno == false
        lista << projeto
      end
    end
    lista
  end

  def veraoAtual(projetos_extracao, projetos_sonar)
    @limpeza_dados.projeto_versao_atual projetos_extracao, projetos_sonar
  end

  def listar_extracao_sonar(file_sonar_extraidos)

    
    dados = []
    lista_sonar = []
    lista_dados_extraidos = listar_dados_projetos file_sonar_extraidos
    lista_dados_extraidos[1].each do |item|
      dados << item[4]
    end
    lista_sonar = dados
    lista_sonar
  end

  def conteudo_arquivo(arquivo)
    lista_dados_extraidos = listar_dados_projetos arquivo
    colecao = lista_dados_extraidos[1]
    tamanho = colecao.size
    dados_lista = []
   
    colecao.each do |linha|
      dados = "#{linha[0]};#{linha[1]};#{linha[2]};#{linha[3]};#{linha[4]};#{linha[5]};#{linha[6]};#{linha[7]};#{linha[8]};#{linha[9]};#{linha[10]};#{linha[11]};#{linha[12]};#{linha[13]};#{linha[14]};#{linha[15]};"

      lista = dados.split(";")
      dados_lista << lista
    end 
     dados_lista
  end
  
  def listar_build_sonar_extracao(file_sonar_extraidos)
    # Método responsável por retonar uma lista de projeto atualizados
    # de acordo com os arquivos extrídos

    lista_dados_extraidos = listar_dados_projetos file_sonar_extraidos 
    colecao = lista_dados_extraidos[1]
    tamanho = colecao.size
    dados_lista = []
    lista_atualizada = []
   
    colecao.each do |linha|
      dados = "#{linha[4]}; #{linha[5]}; #{linha[6]}; #{linha[7]}; #{linha[8]}"
      lista = dados.split(";")
      dados_lista << lista
    end 

    
    i = 0
    j = 1
    while dados_lista.size > i
      if dados_lista.size > j
        if lista_atualizada == []
          lista_atualizada << dados_lista[i]
        else
          if !(dados_lista[i][0] == dados_lista[j][0])
             lista_atualizada << dados_lista[j]
          end
        end       
      end    
      i += 1
      j += 1
    end
    lista_atualizada 
  end

  def listar_buid_sonar(projetos)
    dados = []
    informacoes_build = []
    projetos.each do |projeto|
    retorno = exibir_aplicacao projeto
      sleep 2
      if retorno == true
        @aplicacao.menu_visualizacao "Issues"
        dados = "#{projeto};#{find(@lista_ul_build).text}".gsub("PM", "PM;#{projeto};")
        dados = dados.gsub("AM", "AM;#{projeto};")
        dados = dados.gsub("\n", ";").split(';')
        linha = @limpeza_dados.limpando_dados dados
        linha.delete ""
        linha.delete_at (linha.size-1)
       
        info = []  
        info << "#{linha[0]}; #{linha[1]}; #{linha[2]}; #{linha[3]}"      
        informacoes_build << info
        end
    end
     informacoes_build
  end

  def comparar_listas_projetos(projetos_sonar, projetos_qa)
    projeto = projetos_qa.clone
    projetos_sonar.each do |item|
      projeto.delete item
    end
    projeto
  end

  def retornar_informacoes_arquivo_extrair(lista_projetos_sonar, info_arquivo)
    lista_projetos_sonar.each do |item|
      info_arquivo = @limpeza_dados.formalizando_dados info_arquivo, item
    end
    info_arquivo
  end

  def exibir_aplicacao(parametro)

    #Método Exibe o Projeto [DASHBOARD]
    retorno = @aplicacao.buscar_projeto parametro
    retorno
  end

  def formalizar_dados(identificacao_dado, dados_analise1, dados_analise2)
    informacoes_extracao = @analise_dados.analizar identificacao_dado, dados_analise1, dados_analise2
    informacoes_extracao
  end

  def extrair_dados(parametro)
    begin
      #Método Responsável pela Extração dos dados [VISUALIZAÇÃO - INDICADOR - GRÁFICO]
      @aplicacao.menu_visualizacao parametro
      dados_build_identificacao = find(@lista_ul_build).text.gsub("\n", ";").split(";")
      dados_build_identificacao = @limpeza_dados.limpando_dados dados_build_identificacao

      #Tratamento dos Dados para iteração com os elementos
      qtdBuild = @limpeza_dados.contagem_build dados_build_identificacao

      #Iteração com as listas não ordenada
      $y = 1
      $dados_linha = ""
      registros = 0

      qtdBuild.each do |i|
        $i = 1
        while $i <= i
          # O Tercho de código abaixo irá tratar se o elemento para iteração
          #   na tela não é duplicado
          if page.has_xpath? "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[1]/ul/li[#{$y}]/ul/li[#{$i}]/ul/li", between: 1..1
            find(:xpath, "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[1]/ul/li[#{$y}]/ul/li[#{$i}]/ul/li").click
          else
            if page.has_xpath? "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[1]/ul/li[#{$y}]/ul/li[#{$i}]/ul/li", between: 1..2
              first(:xpath, "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[1]/ul/li[#{$y}]/ul/li[#{$i}]/ul/li").click
            end
          end

          # O Tercho de código abaixo irá tratar se a tabela existe
          #   na tela
          if page.has_css? (@Tabela_indicador)
            $dados_linha += "00-#{$y}-REGISTRO;#{find(@Tabela_indicador).text};"
          else
            if parametro.eql? "Issues"
              $dados_linha += "00-#{$y}-REGISTRO;#{dados_build_identificacao[1]}, #{dados_build_identificacao[2]}\n0N Bugs\n0N Code Smells\n0N Vulnerabilities\nEvents:;"
            else
              $dados_linha += "00-#{$y}-REGISTRO;NAN 0, 0000, 0:00 AM\n0.0% Coverage\nEvents:;"
            end
          end
          $i += 1
          registros += 1
        end
        $y += 1
      end

      #Formalizando os Registros
      $dados_linha = $dados_linha.gsub("\n", "&&")
      $tabela_registros = $dados_linha.split(";")
      find(@dashboard_projeto).click
      @status = "* Extração Finalizada"
      @log.log_registros @status
    rescue => exception
      @status = "Elementos não visíveis \nPossível instabilidade da Aplicação\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
    return $tabela_registros, dados_build_identificacao
  end

  def extrair_dados_lista_projetos(lista_projetos, issues, coverage, identificacao_registro)
    i = 1
    resultado_extracao = ""
    begin
      lista_projetos.each do |projeto|
        #criação dos objetos temporários
        dados_issues = []
        dados_coverage = []
        identificacao = []
        informacoes_resultado_extracao = []

        #interação com a aplicação
        exibir_aplicacao projeto
        dados_issues, identificacao = extrair_dados issues
        dados_coverage, identificacao = extrair_dados coverage
        informacoes_resultado_extracao = formalizar_dados identificacao, dados_issues, dados_coverage
        resultado_extracao += @dados_arquivos.formalizando_registros informacoes_resultado_extracao, projeto, identificacao_registro
        i += 1
      end
      @status = "* Extração Finalizada"
      @log.log_registros @status
    rescue => exception
      @status = "Elementos não visíveis \nPossível instabilidade da Aplicação\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
    end
    resultado_extracao
  end

  def extracao_lista_projeto_salvando(projetos, input)
    i = 0
    projetos.each do |projeto|
      lista_input = input[i]
      retorno = exibir_aplicacao projeto
      if retorno == true
        sleep 2
        dados_issues, registros_identificacao = extrair_dados "Issues"
        dados_coverage, registros_identificacao = extrair_dados "Coverage"
        informacoes_resultado_extracao = formalizar_dados registros_identificacao, dados_issues, dados_coverage
        resultado_extracao = @dados_arquivos.formalizando_registros informacoes_resultado_extracao, projeto, lista_input
        if !(resultado_extracao.eql? nil)
          projeto = nil
          criacao_arquivo_csv resultado_extracao, projeto
        end
      end
      projeto = nil
      lista_input = nil
      i += 1
    end
  end

  def criacao_arquivo_csv(dados_extraidos, projeto)
    data = @tools.data_atual
    @cabecalho = ""
    @conteudo = ""
    @status = "\n....\nCriação do Arquivo CSV....\n"
    @file = "extracao_sonar.csv"
    begin
      if !(projeto.eql? nil)
        arquivos_projeto = nil
        resultado_extracao = @dados_arquivos.formalizando_registros dados_extraidos, projeto, arquivos_projeto
      else
        resultado_extracao = dados_extraidos
      end
      
      @tools.gravar_dados @file, resultado_extracao
      @status += "* Arquivo Criado com Sucesso!!\n....\n* Extração dos Dados Finalizado   *****\n* #{data[0]} - #{data[1]}"
      @log.log_registros @status
    rescue => exception
      puts exception.message
      @status = "Erro ao Realizar a Criação do Arquivo .csv\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
  end
end
