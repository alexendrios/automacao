Quando("informo o nome do arquivo {string} onde está gravada o número de OMP-OS") do |arquivo| 
    
    #setup para carregamento das informações
    @autorizar = Autorizar.new
    @info = []     
    
    #setup arquivo
    @info[0] =  @autorizar.recuperar_dados arquivo
    
end                                                                                           

Quando("informo a justificativa {string} da autorização pela autoridade Determinante") do |justificativa|

    #setup
    @info[1] = justificativa

    #realizando o teste
    @autorizar.autorizar_autoridade_determinante  @info
end