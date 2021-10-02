Dado("que estou na pagina de login do sistema") do
    visit '/'
  end
  
  Quando("eu informo um {string} e {string}") do |usuario, password|
    @login = Login.new
    @login.logar(usuario, password)
   
  end
  
  Entao("vejo {string}") do |msg|
    expect(page).to have_content msg
  end