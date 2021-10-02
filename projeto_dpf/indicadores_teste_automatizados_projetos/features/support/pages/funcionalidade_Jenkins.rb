class FuncionalidadesJenkins < SitePrism::Page
 
=begin

    * Classe responável pela criação dos Objetos: - Login, e - Funcionalidades referente aos Sistemas Jenkins e Mantis
    * Objetivo mostrar as estatísticas dos Projetos
    * KPI Dashboard - DevOps
    * Script - Desenvolvido por Alexandre Santos - STEFANINI - PROGRAMADOR JUNIOR
    * Version 1.0.3 Atualizado 06/12/2018
    
=end

    def navegar_sistema(url_capa, url_servidor, url_sistema, login, senha, url_jobs)

        #objetos criados
        @login_jenkins = LoginJenkins.new
        @funcao_jenkins = EstruturaJenkins.new
   
        #Ambiente Jenkins
        visit url_capa
        sleep(15)
        visit url_servidor
        @login_jenkins.logar login, senha
        
        visit url_sistema
        
        @funcao_jenkins.operacao_painel
            8.times do
                @funcao_jenkins.operacao_down
                sleep(1)
            end
        sleep(3)
        
        @funcao_jenkins.escolhe_opcao
        
        @status = page.has_text?("Cucumber reports")
        
                if @status == true
                        @funcao_jenkins.reports
                         sleep(10)
                                               
                        @status_resultado = page.has_text?("Error")
                        if @status_resultado == true
                                @funcao_jenkins.logouf
                                else
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
                else
                        visit url_capa
                        sleep(180)  
            end
    end
end