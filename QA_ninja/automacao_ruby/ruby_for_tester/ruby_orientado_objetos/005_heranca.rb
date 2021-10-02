class Carro
  attr_accessor :nome, :marca, :modelo

  def initialize(nome, marca, modelo)
    self.nome = nome
    self.marca = marca
    self.modelo = modelo
  end

  def ligar
    puts "#{nome}, está pronto para iniciar o Trajeto!!!"
  end
end

civic = Carro.new("Civic", "Honda", "SI")
civic.ligar
