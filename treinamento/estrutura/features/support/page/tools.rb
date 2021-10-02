class Tools
    
    #método grava dados, o mesmo cria um arquivo.txt
    def gravar_dados(file, dados)

        local_file = open(file, "w")
        local_file.write(dados)    
        local_file.close
    end

    
end