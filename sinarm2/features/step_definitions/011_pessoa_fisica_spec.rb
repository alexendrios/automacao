Quando("solicitar a consulta de Pessoa Física") do
  @pessoa_fisica_page = PessoaFisicaPage.new
  @pessoa_fisica_page.consultar_pessoa_fisica
end

Quando("informar os dados para pesquisa") do
  @pessoa_fisica_page.informar_dados_pesquisa
end

Entao("deve apresentar o registro correspodente aos dados pesquisados") do
  @pessoa_fisica_page.validar_registro_encontrado
end

Quando("informar o nº do CPF para pesquisa") do
  @pessoa_fisica_page.informar_cpf_pesquisa
end

Quando("solicitar detalhar o registro") do
  puts "Clicando em detalhar..."
  @pessoa_fisica_page.btn_detalhar.click
end

Entao("deve visualizar os dados da aba Detalhar Pessoa Física") do
  puts "visualizando aba Detalhar Pessoa Física"
  @pessoa_fisica_page.visualizar_aba_detalhar
end

Entao("deve visualizar os dados da aba Histórico de Alterações") do
  puts "Visualizando aba histórico"
  @pessoa_fisica_page.visualizar_aba_historico
end

Quando("solicitar incluir Pessoa Física") do
  @pessoa_fisica_page = PessoaFisicaPage.new
  @pessoa_fisica_page.incluir_pessoa_fisica
end

Quando("informar os dados para a categoria {string}") do |categoria|
  @categoria = categoria
  @pessoa_fisica_page.informar_dados_inclusao(@categoria)
end

Quando("solicitar salvar a inclusão") do
  @pessoa_fisica_page.btn_salvar.click
end

Quando("a inclusão deve ser efetuada com sucesso") do
  @msg_sucesso = "Operação efetuada com sucesso."
  expect(@pessoa_fisica_page).to have_text(@msg_sucesso)
end
