module FileHelper

  def remover_acentos!(texto)

    texto.gsub!(/(á|à|ã|â|ä)/, 'a')
    texto.gsub!(/(é|è|ê|ë)/, 'e')
    texto.gsub!(/(í|ì|î|ï)/, 'i')
    texto.gsub!(/(ó|ò|õ|ô|ö)/, 'o')
    texto.gsub!(/(ú|ù|û|ü)/, 'u')
    texto.gsub!(/(Á|À|Ã|Â|Ä)/, 'A')
    texto.gsub!(/(É|È|Ê|Ë)/, 'E')
    texto.gsub!(/(Í|Ì|Î|Ï)/, 'I')
    texto.gsub!(/(Ó|Ò|Õ|Ô|Ö)/, 'O')
    texto.gsub!(/(Ú|Ù|Û|Ü)/, 'U')
    texto.gsub!(/(ñ|Ñ)/, 'n')
    texto.gsub!(/(ç|Ç)/, 'c')

    texto
  end

  def normalizar_path(path)

    path.tr!(" ", "_") if path.include?(" ")

    remover_acentos!(path)

    # ajustando caminho ao SO correspodente
    File.join(Dir.pwd, path).gsub(File::SEPARATOR, File::ALT_SEPARATOR || File::SEPARATOR)

  end

  def anexar(campo_anexar, path_file)
    @path_file = normalizar_path(path_file)

    attach_file(campo_anexar, @path_file, make_visible: true)
  end

  def gravar_dados(path, dados)
    @path = normalizar_path(path)

    File.open(@path, 'w') do |file|
      file.puts(dados)
    end
  end

  def recuperar_dados(file)
    File.readlines(file)
  end

  def atualizar_conteudo(path, dados)
    @path = normalizar_path(path)

    File.open(@path, 'a') do |file|
      file.puts(dados)
    end
  end

end
