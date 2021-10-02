class InformacaoArquivo
  def initialize
    @tools = Tools.new
    @limpeza = TratamentoDados.new
    @status = ""
    @log = Log.new
  end

  def indentificacao_cabecalho(tipo)
    cabecalho = ""
    begin
      if tipo.eql? "simples"
        cabecalho = "DATA EXTRACAO;HORA EXTRACAO;PROJETO;BUILD;MES/DIA;ANO;HORARIO;BUGS;NOTA;CODE SMELLS;NOTA;VULNERABILITIES;NOTA;COVERAGE %"
      else
        cabecalho = "SIGLA;QA;DATA EXTRACAO;HORA EXTRACAO;PROJETO;BUILD;MES/DIA;ANO;HORARIO;BUGS;NOTA;CODE SMELLS;NOTA;VULNERABILITIES;NOTA;COVERAGE %"
      end
      @status = "* Criação da Identificação Cabeçalho"
      @log.log_registros @status
    rescue => exception
      @status = "Erro ao criar a Identificação do Cabeçalho\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
    cabecalho
  end

  def indentificar_projeto(arquivo_projetos, projeto)
    i = 0
    informacao = ""
    begin
      while i < arquivo_projetos.size
        if arquivo_projetos[i].eql? projeto
          informacao = "#{arquivo_projetos[0]};#{arquivo_projetos[2]};"
        end
        i += 1
      end
      return informacao
    rescue => exception
      @status = "Erro ao ao realizar a Identificação do Projeto\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      exit
    end
  end

  def formalizando_registros(registros, projeto, arquivo_projetos)
    data, horario = @tools.data_atual
    registro_formalizado = ""
    $i = 0
 
    begin
      registros.each do |linha|
        registro_linha = []
        if ($i % 2 == 0)
          if arquivo_projetos.eql? nil
            registro_formalizado += "#{data};#{horario};#{projeto};#{linha};"
          else
            res = indentificar_projeto arquivo_projetos, projeto
            registro_formalizado += "#{res}#{data};#{horario};#{projeto};#{linha};" 
          end
        else
          registro_linha = linha.split("&&")
          registro_linha = @limpeza.formalizando_dados registro_linha, "Events:"

          #Tratando os Registros das Linhas
          informacoes = registro_linha[0].split(",")
          mes_dia_registro = informacoes[0]
          ano_registro = informacoes[1].strip()
          hora_registro = informacoes[2].strip()
          registro = registro_linha[1].gsub("Bugs", "").gsub(",", "").strip
          registro_bugs = registro[0, (registro.length - 1)]
          nota_bugs = registro[registro.length - 1]
          registro = registro_linha[2].gsub("Code Smells", "").gsub(",", "").strip
          registro_code = registro[0, (registro.length - 1)]
          nota_code = registro[registro.length - 1]
          registro = registro_linha[3].gsub("Vulnerabilities", "").gsub(",", "").strip
          registro_vuner = registro[0, (registro.length - 1)]
          nota_vuner = registro[registro.length - 1]
          registro = registro_linha[4].gsub("Coverage", "").gsub("%", "").strip
          registro_coverage = registro

          #Criando os registros após o tratamento
          registro_formalizado += "#{mes_dia_registro};#{ano_registro};#{hora_registro};#{registro_bugs};#{nota_bugs};#{registro_code};#{nota_code};#{registro_vuner};#{nota_vuner};#{registro_coverage}\n"
        end
        $i += 1
      end
      @status = "* Formalização do Registro"
      @log.log_registros @status
      return registro_formalizado
    rescue => exception
      registro_formalizado = nil
      exception.message
      @status = "Erro ao ao realizar a  Formalização do Registro\n....\nWEBSCRAP Abortado\n#{exception.message}\n"
      @log.log_registros @status
      return registro_formalizado
      #exit
    end
  end
end
