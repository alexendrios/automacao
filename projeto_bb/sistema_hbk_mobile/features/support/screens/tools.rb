class Tools

=begin

    * Script desenvolvido por Alexandre Pereira Santos :
    * Classe onde disponibilizam funções auxiliares

        1 - Gravação de Dados em txt;
        2 - Leitura de Arquivo;
        3 - upload de arquivos;

    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490

    By Fev 2019

=end
    
    #método grava dados, o mesmo cria um arquivo.txt
    def gravar_dados(file, dados)

        local_file = open(file, "w")
        local_file.write(dados)    
        local_file.close
    end

    #método que ler um arquivo 
    def leitura(file)

        File.open(file, 'r') do |ler|
            while novaLinha = ler.gets
              @protocolo = novaLinha
            end
        end
        numero = @protocolo.split(" ")
        return  @autorizacao = numero[9]
    end

    #método upload arquivo
     def upload(caminho_arquivo, campo_file)

        attach_file(campo_file, caminho_arquivo, make_visible: true)
     end
end