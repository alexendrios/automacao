class Dashboard < SitePrism::Page
    
        def exibir(url_capa, url_sistema, usuario_mantis, senha_mantis)

                #objetos criados
                @login_mantis = LoginMantis.new
                @funcao_mantis = FuncionalidadeMantis.new

                #Ambiente Mantis
                visit 'http://10.61.79.106/minerhome/home.html'
                        sleep(5)

                visit 'http://issues.corp.stefanini.com'

                @login_mantis.logar usuario_mantis, senha_mantis
                @funcao_mantis.projeto
                @funcao_mantis.navega_caso                                                                        
                @funcao_mantis.filtro_sprint

                visit 'http://10.61.79.106/minerhome/metricas.html'
                        sleep(5)

                visit 'http://issues.corp.stefanini.com'

                @funcao_mantis.navega_resumo    
                        sleep(5)
                        5.times do
                                @funcao_mantis.down('navega_resumo')
                                sleep(2)
                        end

                @funcao_mantis.navega_categoria                            
                        sleep(5)
                        9.times do
                                @funcao_mantis.down('navega_categoria')
                                sleep(2)
                        end

                # @funcao_mantis.navega_resumo_avancado
                #         sleep(5)
                #         17.times do
                #                 @funcao_mantis.down('navega_resumo_avancado')
                #                 sleep(2)
                #         end

                @funcao_mantis.sair
        end
end