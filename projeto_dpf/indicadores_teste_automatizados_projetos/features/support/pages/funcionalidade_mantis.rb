class FuncionalidadesMantis < SitePrism::Page
 
=begin

    * Classe responável pela criação dos Objetos: - Login, e - Funcionalidades referente aos Sistemas Jenkins e Mantis
    * Objetivo mostrar as estatísticas dos Projetos
    * KPI Dashboard - DevOps
    * Script - Desenvolvido por Alexandre Santos - STEFANINI - PROGRAMADOR JUNIOR
    * Version 1.0.3 Atualizado 06/12/2018
    
=end

        def navegar_sistema(usuario, senha)

                #objetos criados
                @login_mantis = LoginMantis.new
                @funcao_mantis = EstruturaMantis.new

                #Ambiente Mantis
                        visit 'http://issues.corp.stefanini.com/login_page.php'
                        @login_mantis.logar usuario, senha

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
    end
end