class Conta
  attr_accessor :saldo

  def deposito(valor)
    self.saldo += valor
    "depositando a quantia de #{valor} Reais"
  end
end

c = Conta.new
c.saldo = 0.00
deposito = c.deposito 500.00
p deposito
p c.saldo
