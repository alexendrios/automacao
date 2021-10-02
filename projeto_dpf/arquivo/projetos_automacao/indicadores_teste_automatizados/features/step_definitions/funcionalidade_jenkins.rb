Dado("que estou logado no Sistema Jenkins com {string} e {string}") do  |user_name, passoword|  
   
    @login_jenkins = LoginJenkins.new
    visit 'http://10.2.108.16/siscaerhome/home.html'
    sleep(10)

    visit 'http://10.2.108.12:8080/login?from=%2F'
    @login_jenkins.logar 'admin', 'admin'
    visit "http://10.2.108.12:8080/job/DPF/job/SISCAER/job/PROJETO/job/teste/"
  end                                                                           
                                                                                
  Quando("eu pecorro a tabela") do                                              
    
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
                        end

  end                                                                           