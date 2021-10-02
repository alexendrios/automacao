require_relative "../../app/bank.rb"
describe "Conta Corrente" do
  describe "Saque" do
    context "Quando o Valor é Positivo" do
      before(:all) do
        @conta_corrente = ContaCorrente.new(1000.00)
        @conta_corrente.saca 200.00
      end

      it "então atualiza Saldo" do
        expect(@conta_corrente.saldo).to eql 800.00
      end
    end

    context "Quando o saldo é zero" do
      before(:all) do
        @conta_corrente = ContaCorrente.new(0.00)
        @conta_corrente.saca 100.00
      end
      it "então exibe mensagem" do
        expect(@conta_corrente.mensagem).to eql "Saldo insuficiente para saque :("
      end
      it "e o saldo final com zeros" do
        expect(@conta_corrente.saldo).to eql 0.00
      end
    end

    context "Saldo é insuficiente" do
      before(:all) do
        @conta_corrente = ContaCorrente.new(500.00)
        @conta_corrente.saca 501.00
      end
      it "então exibe mensagem" do
        expect(@conta_corrente.mensagem).to eql "Saldo insuficiente para saque :("
      end
      it "e o saldo permanece" do
        expect(@conta_corrente.saldo).to eql 500.00
      end
    end

    context "Limite por saque" do
      before(:all) do
        @conta_corrente = ContaCorrente.new(1000.00)
        @conta_corrente.saca 701.00
      end
      it "então exibe mensagem" do
        expect(@conta_corrente.mensagem).to eql "Limite máximo por saque é de R$ 700"
      end
      it "e o saldo permanece" do
        expect(@conta_corrente.saldo).to eql 1000.00
      end
    end
  end
end
