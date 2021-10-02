class Vingadores
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(vingador)
    self.list.push(vingador)
  end
end

#TDD => Desenvolvimento Guiado por Testes
describe Vingadores do
  it "Deve adicionar um Vinggador" do
    v = Vingadores.new
    v.put "Homem de Ferro"
    expect(v.list).to eql ["Homem de Ferro"]
  end
end
