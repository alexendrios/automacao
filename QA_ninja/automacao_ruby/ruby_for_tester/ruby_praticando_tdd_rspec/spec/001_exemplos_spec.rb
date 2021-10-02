# Exemplos de Suite de Testes
describe "Suite rspec" do
  #Exemplo de Cenário
  it "Soma de Valores" do
    soma = 10 + 5
    expect(soma).to eql 15
  end
end
