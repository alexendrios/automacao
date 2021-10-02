Dado("que eu estou na tela de estrutura investigativa") do
   visit 'https://prehom.dpf.gov.br/sittel/estrutura-investigativa/criar-unidade'
  
   @logar = Login.new
   @logar.logar 'juliana.jp', 'ctidpf'

   @info = Estrutura_investigativa.new
end
  
Quando("eu clico na opção unidade") do
    metade_sigla = 'SR/PF/'
    sigla_inteira = 'SR/PF/TO'
    
    @info.sigla_unidade  metade_sigla, sigla_inteira
    sleep(10)
end
  
Quando("eu informo os dados da unidade") do
   
end
  
Quando("eu visualizo a confirmação do Cadastro {string}") do |string|
    
end
  
Quando("eu passo para o cadastro de subUnidade") do
   
end