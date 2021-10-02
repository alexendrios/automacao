class Conta
  attr_accessor :saldo, :nome

  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def deposito(valor)
    self.saldo += valor
    "depositando a quantia de #{valor} Reais"
  end
end

c = Conta.new("Alexandre")
deposito = c.deposito 500.00
puts "#{c.nome}\n #{deposito}"
deposito = c.deposito 100.00
puts "#{c.nome}\n #{deposito}"
puts "Seu saldo disponível: R$#{c.saldo}"
