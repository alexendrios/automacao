Dado("que estou na página inicial do sistema") do
    @gerar_paav = GerarPAAV.new
    @gerar_paav.acessar_home(ENV['USUARIO'],ENV['SENHA'])
    expect(@gerar_paav).to have_text('Sistema de Transportes')
end
  
  Quando("acesso a aba de PAAV") do
    
end
  
  Quando("clico para gerar PAAV") do
    
end
  
  Quando("preencho a justificativa") do
    
end
  
  Entao("vejo a mensagem de sucesso") do
    
end