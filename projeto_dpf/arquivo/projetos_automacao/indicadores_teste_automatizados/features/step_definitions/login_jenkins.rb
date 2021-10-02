Dado("que estou na pagina de login do Jenkins") do
    visit 'http://10.2.108.12:8080/login?from=%2F'
    @login = LoginJenkins.new
  end
  
  Quando("eu informo um {string} e {string}") do |user_name, passoword|
    @login.logar user_name, passoword
  end
  
  Entao("vejo {string}") do |menssagem|
    expect(page).to have_content menssagem
  end