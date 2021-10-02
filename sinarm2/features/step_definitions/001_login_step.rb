Dado("que estou na pagina de login do SINARM") do
  puts "Acessando Url do SINARM2"
  @login_page = LoginPage.new
  @login_page.load
end

Quando("eu informo usuario {string} e senha {string}") do |usuario, senha|
  puts "Inserindo usuário e senha"
  @login_page.logar(usuario, senha)
end

Entao("sou autenticado com {string}") do |usuario_logado|
  puts "Validando acesso"
  expect(@login_page.usuario_logado.text).to include(usuario_logado)
end
