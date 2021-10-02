class TratamentoDados
  def initialize
    #Classe Responsável pelo log da aplicação
    @log = Log.new

    #Variável respomsável pelo log da aplicação
    @status = ""
  end

  def formalizando_dados(parametros, criteiro)
    dados = parametros.clone
    begin
      $i = 0
      while $i < dados.size
        if dados[$i].include? criteiro
          dados.delete_at $i
        end
        $i += 1
      end
    rescue => exception
      @status = "Erro ao executar a Formalização dos Dados\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_formalizando_dados @status
      exit
    end
    dados
  end

  def limpando_dados(parametros)
    begin
      parametros = formalizando_dados parametros, "Version"
      parametros = formalizando_dados parametros, "Quality"
      parametros = formalizando_dados parametros, "Quality Profile"
      parametros = formalizando_dados parametros, "Quality Profile: "
      @status = "- Formalizando Dados"
      @status += "\n- Limpeza de Dados"
      @log.log_registros @status
    rescue => exception
      @status = "Erro ao Executar o Processo de Limpeza de Dados\n....\nWEBSCRAP Abortado\n"
      @log.log_registros @status
      exit
    end
    parametros
  end

  def limpando_registros_meses(parametro)
    begin
      default_mes = ["NAN", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
      default_mes.size.times do
        default_mes.each do |mes|
          parametro = formalizando_dados parametro, mes
          parametro = formalizando_dados parametro, "AM"
          parametro = formalizando_dados parametro, "PM"
        end
      end
      @status = "- Formalizando Dados"
      @status += "\n- Limpeza de Meses"
      @log.log_registros @status
    rescue => exception
      @status = "Erro so Executar o processo de Limpeza dos Meses\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
    parametro
  end

  def contagem_build(parametros)
    begin
      #Identificação dos builds
      identif_versao = parametros.clone
      identif_versao = limpando_registros_meses identif_versao

      #Identificando a quantidade de builds
      dados = ""
      $i = 0
      while $i < parametros.size
        identif_versao.each do |versao|
          if parametros[$i].include? versao
            dados += ";"
          end
        end
        if parametros[$i].include? "AM" or parametros[$i].include? "PM"
          dados += "1"
        end
        $i += 1
      end

      # Após a execução do trecho de código anterior resultará uma saida abstraindo a idéia
      #   de uma versão representada por uma posição no array e uma quantidade de "1" referenciando
      #   a quantos builds executados, esta abstração estará contida na variável saída.

      saida = dados.split(";")

      dados = ""
      saida.each do |a|
        if a != ""
          dados += a.length.to_s + ";"
        end
      end
      parametros = dados.split(";")
      $qtdbuild = []
      $i = 0
      parametros.each do |item|
        $qtdbuild[$i] = item.to_i
        $i += 1
      end
      @status = "* Contagem de Build"
      @log.log_registros @status
    rescue => exception
      @status = "Falha ao Execultar a contagem de Build\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end

    # Ao final da execução do código será retornado um array com o total de build por versão
    #   separados por posição
    $qtdbuild
  end

  def projeto_versao_atual(projetos_extracao, projetos_sonar)

    projetos_sonar.each do |item|
      p "#{item[0]}, #{item[1]}, #{item[2]}, #{item[3]}"
    #  linha_extracao = "#{item[1]}, #{item[2]}, #{item[3]}"
    #  projetos_sonar.each do |item2|
    #    linha_sonar = "#{item2[1]}, #{item2[2]}, #{item2[3]}"
    #     if(item[0].eql? item2[0])
    #      puts "#{linha_extracao} / #{linha_sonar}"
    #     end
    #  end 
    end
  end
end
