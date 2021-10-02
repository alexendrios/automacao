Dado("que estou logado no Sistema Mantis com o usuário {string} e senha {string}") do |user_name, passoword|
  
      visit 'http://issues.corp.stefanini.com/login_page.php'

      @login = LoginMantis.new
      @login.logar user_name, passoword
      @funcao = FuncionalidadeMantis.new
  end
  
  Quando("eu navego pelos seguintes indicadores") do
     
    @funcao.navega_visao

      sleep(5)
        10.times do
              @funcao.visao_down
              sleep(2)
        end

    @funcao.navega_resumo

      sleep(5)
        27.times do
              @funcao.reusumo_down
              sleep(2)
       end

    @funcao.navega_status
    
      sleep(5)
      9.times do
            @funcao.status_down
            sleep(2)
      end

      @funcao.navega_prioridade
    
      sleep(5)
      17.times do
            @funcao.prioridade_down
            sleep(2)
      end

      @funcao.navega_seriedade
    
      sleep(5)
      17.times do
            @funcao.seriedade_down
            sleep(2)
      end

      @funcao.navega_categoria
    
      sleep(5)
      9.times do
            @funcao.categoria_down
            sleep(2)
      end

      @funcao.navega_resolucao
    
      sleep(5)
      17.times do
            @funcao.resolucao_down
            sleep(2)
      end

      @funcao.navega_resumo_avancado
    
      sleep(5)
      17.times do
            @funcao.resumo_avancado_down
            sleep(2)
      end
      
      @funcao.sair
  end