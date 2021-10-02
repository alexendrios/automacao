Dado("que gostaria de visualizar os indicadores do sistema Jenkins e Mantis") do
       
        #criaçao dos objetos de Dashboards
        @siscaer = FuncionalidadesJenkins.new
        @siscaer_mantis = FuncionalidadesMantis.new
        @miner = FuncionalidadesJenkins.new
        @miner_mantis = FuncionalidadesMantis.new

        
        @url_servidor = 'http://10.61.79.113:8080/login?from=%2F'
        @login = 'admin'
        @senha = 'admin'
       
        #setup projeto siscaer
        @url_siscaer_capa = 'http://10.61.79.106/siscaerhome/home.html'
        @url_siscaer_projeto = 'http://10.61.79.113:8080/job/DPF/job/SISCAER/job/PROJETO/job/siscaer/'
        @siscaer_mantis_usuario = 'apsantos8'
        @siscaer_mantis_senha ='stefanini@10'

        #setup projeto miner
        @url_miner_capa = 'http://10.61.79.106/minerhome/home.html'
        @url_miner_projeto = 'http://10.61.79.113:8080/job/DPF/job/MINER/job/FUNCIONALIDADES/job/001-LOGIN/'
        @miner_mantis_usuario = 'fdalves'
        @miner_mantis_senha ='#Q121l493'

        @url_jobs = 'http://10.61.79.106/jobs/jobs.html'
end
  
Quando("eu estou em um loop infinito") do
       
        sleep(15)
        #execução dos Dashboards ininterruptamente
        loop do
               @siscaer.navegar_sistema @url_siscaer_capa, @url_servidor, @url_siscaer_projeto, @login, @senha, @url_jobs
               #@siscaer_mantis.navegar_sistema  @siscaer_mantis_usuario, @siscaer_mantis_senha
               @miner.navegar_sistema @url_miner_capa, @url_servidor, @url_miner_projeto, @login, @senha, @url_jobs
               #@miner_mantis.navegar_sistema  @miner_mantis_usuario, @miner_mantis_senha
        end
end 