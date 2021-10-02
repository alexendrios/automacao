Dado("que gostaria de visualizar os indicadores do sistema Mantis") do
       
    #Criaçao dos Dashboards
    @miner = Dashboard.new
end

Quando("eu estou em um loop infinito") do

    #Setup Projeto Miner
    @url_miner_capa = 'http://10.2.108.16/minerhome/home.html'
    @url_miner_projeto = 'http://10.2.108.12:8080/job/DPF/job/MINER/job/FUNCIONALIDADES/job/001-LOGIN/'
    @miner_mantis_usuario = 'fdalves'
    @miner_mantis_senha ='#Q121l493'
        
    #exibição dos Dashboards ininterruptamente
    # loop do
        @miner.exibir @url_miner_capa, @url_miner_projeto, @miner_mantis_usuario, @miner_mantis_senha 
    # end
end