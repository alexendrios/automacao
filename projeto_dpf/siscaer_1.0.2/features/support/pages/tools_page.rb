class Tools < SitePrism::Page

=begin

    * Classe desenvolvida para disponibilizar recursos:
    1) Upload de arquivos
    
=end
     
    #método upload arquivo
     def upload(caminho_arquivo, campo_file)
        
            @arquivo = caminho_arquivo
            attach_file(campo_file, @arquivo, make_visible: true)
     end
end