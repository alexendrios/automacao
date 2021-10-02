Dado("que eu visite a wikpedia") do
    visit ' '
end
  
Quando("visualiso a tabela com informações") do
    @tabela = Estrutura.new
    
end
  
Quando("clico no link") do 
    @tabela.visualizar_tabela
end

Então("visualizo as informações {string}") do |mensagem|
    expect(page).to have_content mensagem
end