Dado("que eu visite o webSite {string}") do |aplicacao|  
    
    @cadastrar = Cadastrar.new
    @infomacoes_cadastro = []

    visit aplicacao
end
  
Quando("no menu escolho {string},") do |opcao|
    @infomacoes_cadastro[0] = opcao
end
  
Quando("ao inserir o e-mail {string} clico no botão Create en account,") do |email|
   
    @infomacoes_cadastro[1] = email
end

Quando("escolho a forma de Tratamento {string}, insiro o primeiro nome {string}, insiro o sobrenome {string},") do |tratamento, 
    nome, sobreNome|
    
    @infomacoes_cadastro[2] = tratamento
    @infomacoes_cadastro[3] = nome
    @infomacoes_cadastro[4] = sobreNome
end

Quando("escolho uma senha {string}, informo a data de nascimento {string}, infomo que quero receber notícias {string},") do | senha, 
                        dataNas, noticias|
    
    @infomacoes_cadastro[5] = senha
    @infomacoes_cadastro[6] = dataNas
    @infomacoes_cadastro[7] = noticias
end                                                                         
                                                                                  
Quando("informo que gostaria de receber ofertas {string}, informo a companhia {string}, o endereço {string},") do |ofertas, 
    companhia, endereco|                  
    
    @infomacoes_cadastro[8] = ofertas
    @infomacoes_cadastro[9] = companhia
    @infomacoes_cadastro[10] = endereco
end                                                                           
                                                                                  
Quando("informo a cidade {string}, o estado {string}, código postal {string}, país {string},") do |cidade, 
    estado, codigoPosta, pais|                        
    
    @infomacoes_cadastro[11] = cidade
    @infomacoes_cadastro[12] = estado
    @infomacoes_cadastro[13] = codigoPosta
    @infomacoes_cadastro[14] = pais
end                                                                           
                                                                                  
Quando("informo anotações gerais {string}, telefone {string}, celular {string},") do |observacoes, 
    telefone, celular|                                              
    
    @infomacoes_cadastro[15] = observacoes
    @infomacoes_cadastro[16] = telefone
    @infomacoes_cadastro[17] = celular
end                                                                           
                                                                                  
Quando("infomo o endereço de entrega {string} e clico no botão cadastrar") do|enderecoEntrega|                                                                        
    
    @infomacoes_cadastro[18] = enderecoEntrega
    
    @cadastrar.cadastrar @infomacoes_cadastro
end  

Então("eu visualizo a seguinte mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
end