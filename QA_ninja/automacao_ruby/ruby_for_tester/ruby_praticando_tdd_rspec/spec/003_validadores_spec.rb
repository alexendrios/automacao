class Vingadores
  attr_accessor :list

  def initialize
    self.list = []
  end

  def put(vingador)
    self.list.push(vingador)
  end
end

describe Vingadores do
  it "Deve adicionar um Vinggador" do
    v = Vingadores.new
    v.put "Homem de Ferro"
    expect(v.list).to eql ["Homem de Ferro"]
  end

  it "Deve adicionar uma Lista de Vingadores" do
    v = Vingadores.new
    v.put("Thor")
    v.put("Capitão América")
    v.put("Hulk")
    expect(v.list).to include "Capitão América"
  end

  it "Deve adicionar uma Lista de Vingadores" do
    v = Vingadores.new
    v.put("Thor")
    v.put("Capitão América")
    v.put("Hulk")
    expect(v.list.size).to be > 0
  end

  it "Deve adicionar uma Lista de Vingadores" do
    v = Vingadores.new
    v.put("Thor")
    v.put("Capitão América")
    v.put("Hulk")
    res = v.list.size > 0
    expect(res).to be true
  end

  it "Thor deve ser o primeiro da lista" do
    v = Vingadores.new
    v.put("Thor")
    v.put("Capitão América")
    v.put("Hulk")
    expect(v.list).to start_with "Thor"
  end

  it "Hulk deve ser o ultimo da lista" do
    v = Vingadores.new
    v.put("Thor")
    v.put("Capitão América")
    v.put("Hulk")
    expect(v.list).to end_with "Hulk"
  end

  it "Deve conter o sobrenome" do
    vingador = "Peter Parker"
    expect(vingador).to match(/Parker/)
  end

  it "Não contém o sobrenome" do
    vingador = "Peter Parker"
    expect(vingador).not_to match(/Roger/)
  end
end
