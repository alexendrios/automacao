Dado("que gostaria de visualizar os indicadores do sistema Jenkins e Mantis") do
       
        @login_jenkins = LoginJenkins.new
        @login_mantis = LoginMantis.new
        @funcao_jenkins = FuncionalidadeJenkins.new
        @funcao_mantis = FuncionalidadeMantis.new
  end
  
  Quando("eu estou em um loop infinito") do
        
        loop do
                #Ambiente Jenkins
                visit 'http://10.2.108.16/siscaerhome/home.html'
                sleep(10)
                visit 'http://10.2.108.12:8080/login?from=%2F'
                @login_jenkins.logar 'admin', 'admin'
                
                visit "http://10.2.108.12:8080/job/DPF/job/SISCAER/job/PROJETO/job/siscaer/"
               
                @funcao_jenkins.operacao_painel
                        8.times do
                                @funcao_jenkins.operacao_down
                                sleep(1)
                        end
                        sleep(3)
                
                @funcao_jenkins.escolhe_opcao
               
                @status = page.has_text?("Cucumber reports")

                        if @status == true
                                                        
                                @funcao_jenkins.features
                                sleep(1)

                                3.times do
                                        @funcao_jenkins.features_down
                                        sleep(1)
                                end
                                sleep(25)

                                @funcao_jenkins.tags
                                sleep(20)

                                14.times do
                                        @funcao_jenkins.tags_down
                                        sleep(2)
                                end

                                @funcao_jenkins.steps
                                sleep(5)

                                14.times do
                                        @funcao_jenkins.steps_down
                                        sleep(2)
                                end

                                @funcao_jenkins.trends
                                sleep(5)

                                13.times do
                                        @funcao_jenkins.trends_down
                                        sleep(2)
                                end

                                @funcao_jenkins.failures
                                13.times do
                                        @funcao_jenkins.failures_down
                                        sleep(2)
                                end
                                sleep(8)

                                @funcao_jenkins.logouf

                        #Ambiente Mantis
                                visit 'http://issues.corp.stefanini.com/login_page.php'
                                @login_mantis.logar 'apsantos8', 'stefanini@10'

                                @funcao_mantis.navega_visao

                                sleep(5)
                                10.times do
                                        @funcao_mantis.visao_down
                                        sleep(2)
                                end

                                @funcao_mantis.navega_resumo

                                sleep(5)
                                27.times do
                                        @funcao_mantis.reusumo_down
                                        sleep(2)
                                end

                                @funcao_mantis.navega_status
                                
                                sleep(5)
                                9.times do
                                        @funcao_mantis.status_down
                                        sleep(2)
                                end

                                @funcao_mantis.navega_prioridade
                                
                                sleep(5)
                                17.times do
                                        @funcao_mantis.prioridade_down
                                        sleep(2)
                                end

                                @funcao_mantis.navega_seriedade
                                
                                sleep(5)
                                17.times do
                                        @funcao_mantis.seriedade_down
                                        sleep(2)
                                end

                                @funcao_mantis.navega_categoria
                                
                                sleep(5)
                                9.times do
                                        @funcao_mantis.categoria_down
                                        sleep(2)
                                end

                                @funcao_mantis.navega_resolucao
                                
                                sleep(5)
                                17.times do
                                        @funcao_mantis.resolucao_down
                                        sleep(2)
                                end

                                @funcao_mantis.navega_resumo_avancado
                                
                                sleep(5)
                                17.times do
                                        @funcao_mantis.resumo_avancado_down
                                        sleep(2)
                                end
                                
                                @funcao_mantis.sair
                                
                        else
                                visit 'http://10.2.108.16/Siscaer/jobs.html'
                                sleep(180)  
                         end
        end
  end