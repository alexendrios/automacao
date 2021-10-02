class Conta
  attr_accessor :saldo, :mensagem

  def initialize(saldo)
    self.saldo = saldo
  end

  def saca(valor_saque, max)
    if self.saldo > 0.00 and valor_saque <= self.saldo
      if valor_saque <= max
        self.saldo -= valor_saque
      else
        self.mensagem = "Limite máximo por saque é de R$ #{max}"
      end
    else
      self.mensagem = "Saldo insuficiente para saque :("
    end
  end
end

class ContaCorrente < Conta
  def saca(valor_saque, max = 700)
    super
  end
end

class ContaPoupanca < Conta
  def saca(valor_saque, max = 500)
    super
  end
end
