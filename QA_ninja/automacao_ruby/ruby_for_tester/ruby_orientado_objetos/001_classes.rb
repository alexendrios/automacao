#Ruby é uma linguagem puramente orientada a objetos
#Ruby tudo são objetos

#Classe forma de organizar ações para o mundo real
# Classe possui:
# - atributos
# - métosos
# - Caracteristicas
# - Açoes

class Carro
  #atributo
  attr_accessor :nome

  #Método
  def ligar
    puts "O carro está pronto para iniciar o trajeto"
  end
end

civic = Carro.new
civic.nome = "Civic"
puts civic.class

puts civic.nome
puts civic.ligar
