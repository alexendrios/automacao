class AnaliseDados
  def initialize
    @limpeza = TratamentoDados.new
    @default_mes = ["NAN", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    @default_ano = ["0000", "2015", "2016", "2107", "2018", "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2029", "2030"]
    #Classe Responsável pelo log da aplicação
    @log = Log.new
    #Variável respomsável pelo log da aplicação
    @status = ""
  end

  def analise_versao_extrair(parametros, identificacao)
    #Método responsável pela extração da versão [IDENTIFICAÇÃO DOS BUILDS]
    begin
      versao = ""
      $i = 0
      while $i < parametros.size
        if parametros[$i].include? identificacao
          versao += "#{parametros[$i]};"
        end
        $i += 1
      end
      $saida_versao = versao.split(";")
      @status = "\n....\nAnalisando a Versão do Build\n...."
      @log.log_registros @status
    rescue => exception
      @status = "Erro ao realizar a Extração da Versão do Build\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
    $saida_versao
  end

  def adicionar_versao_registros(versao_build, iden_registro, registros)
    #Método responsável para analisar um registro e adicionar a identificação no mesmo
    begin
      for $i in 0..(iden_registro.size - 1)
        for $y in 0..(registros.size - 1)
          if registros[$y] == iden_registro[$i]
            registros[$y] = versao_build[$i]
          end
        end
      end
      @status = "- Adicionando a Versão do Build nos Registros"
      @log.log_registros @status
    rescue => exception
      @status = "Erro ao adicionar a Versão do Build nos registros\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
    registros
  end

  def limpeza_analise(dados)
    #Retirando os meses dos Dados
    begin
      @saida = dados.clone
      @default_mes.each do
        for i in 0..(@default_mes.size - 1)
          @saida = @limpeza.formalizando_dados @saida, @default_mes[i]
        end

        #Retirando os anos dos Dados
        for n in 0..(@default_ano.size - 1)
          @saida = @limpeza.formalizando_dados @saida, @default_ano[n]
        end

        #retirando os Horários
        @saida = @limpeza.formalizando_dados @saida, "AM"
        @saida = @limpeza.formalizando_dados @saida, "PM"

        #retirando o termo Eventos
        @saida = @limpeza.formalizando_dados @saida, "Events"
      end
      @status = "\n* Análise do Registro\n- Limpeza dos Dados"
      @log.log_registros @status
    rescue => exception
      @status = "Erro ao analisar os registros e realizar a limpeza\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end

    @saida
  end

  def refinamento_indicadores(iden_registro, dados)
    # Método Responsável pela limpeza pura dos dados
    # Retonará uma Lista [cada posição da Lista - Referencia
    # ao modo Geral - um registro dos dados Brutos]
    registro = ""
    begin
      for i in 0..(iden_registro.size - 1)
        for y in 0..(dados.size - 1)
          if dados[y] == iden_registro[i]
            dados.delete_at y
          end
        end
      end

      dados.each do |item|
        registro += item + "&&"
      end
      registro = registro.split("&&")
      registro = limpeza_analise registro
      @status = "- Refinamento dos Indicadores"
      @log.log_registros @status
    rescue => exception
      @status = "Erro ao realizar o Refinamento dos Indicadores\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
    registro
  end

  def concartenar_registros(registro_principal, registro_complementar)
    registro = ""
    begin
      $i = 0
      $j = 0
      while $i < registro_principal.size
        if $i % 2 == 0
          registro += "#{registro_principal[$i]};"
        else
          registro += "#{registro_principal[$i]}&&#{registro_complementar[$j]};"
          $j += 1
        end
        $i += 1
      end
      registros = registro.split(";")
      @status = "- Unificando Registros ****"
      @log.log_registros @status
    rescue => exception
      @status = "Erro ao concartenar os registros\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
    registros
  end

  def analizar(parametros_1, parametros_2, parametros_3)
    # Método responsável para analizar os indicadores:
    # - Identificar
    # - Unir os dados

    begin
      @Status = "\nAnálise dos Indicadores\n...."
      # Trecho de Código responsável pela identificação
      #   das versões dos Buids
      $versao_build = parametros_1.clone
      $versao_build = limpeza_analise $versao_build
      $versao_build = $versao_build.uniq
      @status += "- Limpeza da Análise"
      # Trecho de Código responsável pela identificação
      #   dos Registros
      $iden_registro_1 = parametros_2.clone
      $iden_registro_1 = analise_versao_extrair $iden_registro_1, "REGISTRO"
      $iden_registro_1 = $iden_registro_1.uniq

      # Informacões dos Indicadores Extraídos
      $info_issues = adicionar_versao_registros $versao_build, $iden_registro_1, parametros_2
      $info_coverage = refinamento_indicadores $iden_registro_1, parametros_3

      # #Concartenando as informações
      $informacoes = concartenar_registros $info_issues, $info_coverage
      @status += "\n- Criação dos Registros\n* Análise dos Indicadores Finalizado"
      @log.log_registros @status
    rescue => exception
      "Erro realizar a análise dos Indicadores e Criação dos Registros\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
    $informacoes
  end
end
