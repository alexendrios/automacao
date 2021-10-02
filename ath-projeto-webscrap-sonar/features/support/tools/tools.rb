class Tools

  #Metodo Data
  def data_atual
    data = Time.new
    dia = data.day
    mes = data.month
    ano = data.year
    hora = data.hour
    minutos = data.min
    segundos = data.sec

    data_padrao = "#{dia}/#{mes}/#{ano}"
    horario = "#{hora}:#{minutos}:#{segundos}"
    return data_padrao, horario
  end

  #método grava dados, o mesmo cria um Doc
  def gravar_dados(file, dados)
    local_file = File.open(file, "a+")
    local_file.write(dados)
    local_file.close
  end

  #método que ler um arquivo
  def leitura(file)
    @protocolo = ""
    File.open(file, "r") do |ler|
      while novaLinha = ler.gets
        @protocolo += novaLinha.sub("\n", "@@")
      end
    end
    #Ajustar ao projeto
    return @protocolo
  end
end
