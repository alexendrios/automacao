class LoginPage < SitePrism::Page

  # pega a url default
  set_url ''

  element :login, '#emailcti'
  element :password, '#senhacti'
  element :usuario_logado, '#info-logado-nome'
  element :expc, '#breadcrumbs-you-are-here'

  def logar(usuario, senha)
    login.click.set usuario
    password.click.set senha
    click_button 'acessarcti'
  end
end
