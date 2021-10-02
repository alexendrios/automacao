#Método responsável para verificar se um arquivo existe [diretório Download]
def pesquisar_arquivos arquivo  

    #O comando abaixo irá fazer interação com o console salvando as informações
    #da sessão em um arquivo testo 
    system "query user > info.txt"
    File.open("info.txt", 'r') do |ler|
        while novaLinha = ler.gets
          @protocolo = novaLinha
        end
    end
    usuario = @protocolo[1,22].strip

    if File.exists?("C:/Users/#{usuario}/Downloads/#{arquivo}")
        return true
    else
        return false
    end
end

#
# Ao informar do Arquivo o sistema irá retornar 
# true [se existir] ou false [se não existir] 
# Referente ao arquivo mesncionado
#

# Exemplo
saida = pesquisar_arquivos 'certificado.pdf'
p saida




