Dado("que estou na pagina de login do Mantis") do
    visit 'http://issues.corp.stefanini.com/login_page.php'
    @login = LoginMantis.new
  end
  
  Quando("eu informo o usuario {string} e senha {string}") do |user_name, passoword|
    @login.logar user_name, passoword
  end
  
  Entao("vejo a seguinte menssagem {string}") do |menssagem|
    expect(page).to have_content menssagem
  end