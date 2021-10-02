Dado("que estou na pagina de cadastro") do
    visit '#/projetos/lista'
  end
  
  Quando("eu  aciono a opção Novo Caso Miner") do
    @Criar_caso = Criar_caso.new
    @Criar_caso.criar_novo_caso()
  end
  
  Entao("o sistema exibe a mensagem de sucesso {string}") do |msg|
    expect(page).to have_content msg
  end