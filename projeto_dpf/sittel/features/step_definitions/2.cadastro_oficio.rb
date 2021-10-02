Dado("que eu estou na tela Cadastro de Oficio") do
    visit 'https://prehom.dpf.gov.br/sittel'
    @logar = Login.new
    @logar.logar 'juliana.jp', 'ctidpf'
end
  
  Quando("eu informo os dados do oficio") do
    @Oficio_judicial = Oficio_Judicial.new
    @Oficio_judicial.dados
  
   # @Oficio_judicial.select_date
  end

  #Entao("eu visualizo a confirmação do Cadastro {string}") do |string|
    
  #end

  


   