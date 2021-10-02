Dado("que estou na pagina de listar caso") do
    visit '#/projetos/lista'
  end
  
  Quando("eu aciono a opção Excluir Caso Miner") do
    @Excluir_caso = Excluir_caso_miner.new
    @Excluir_caso.excluir_caso()
  end

  Entao("o sistema exibe a mensagem de exclusao {string}") do |msg|
    expect(page).to have_content msg
  end

  
