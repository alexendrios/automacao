Quando("eu informo: que a OMP - OSP foi Analisadas pelo Assessor {string},  nome do arquivo {string} onde está gravada o número de OMP-OS") do |analisadas_assessor, arquivo|
    
    #setup para carregamento das informações
    @autorizar = Autorizar.new
    @info = []     
    
    #setup arquivo
    @info[0] =  @autorizar.recuperar_dados arquivo
    
    #setup
    @info[2] =  analisadas_assessor

    #realizando o teste
    @autorizar.autorizar_autoridade_superior  @info
    
end