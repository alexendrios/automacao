# #Trabalhando com Exeções em Ruby
# Primeiro Formato
# begin
#   #Devo tentar alguma coisa
#   file = File.open("./ola")
#   if file
#     puts file.read
#   end
# rescue Exception => e
#   #Obtenção de um possível erro
#   puts e.message
#   puts e.backtrace
# end

def soma(n1, n2)
  n1 + n2
rescue Exception => e
  puts e.message
end

puts soma(10, "20")
