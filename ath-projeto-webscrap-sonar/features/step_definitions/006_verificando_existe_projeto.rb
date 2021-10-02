Quando("ao informar o nome do projeto {string},") do |projeto|
  @status = @coleta.exibir_aplicacao projeto
end

Então("verifico se o mesmo existe {string}") do |mesagem|
  expect(mesagem.eql? @status)
end
