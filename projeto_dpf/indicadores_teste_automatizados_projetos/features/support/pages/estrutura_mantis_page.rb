class EstruturaMantis < SitePrism::Page
   
=begin

    * Classe responável pela estrutura Mantis
    * Objetivo mostrar as estatísticas dos Bugs/Melhorias presente em cada projeto
    * KPI Dashboard - DevOps
    * Script - Desenvolvido por Alexandre Santos - STEFANINI - PROGRAMADOR JUNIOR
    * Version 1.0.3 Atualizado 06/12/2018
    
=end   
   
   #Mapeando botão logouf
   def sair
        click_link('Sair')
   end 

   #Método navegar nos paineis
   def navega_visao
    click_link('Minha Visão') 
   end

   def navega_resumo
        click_link("Resumo")  
   end

   def navega_status
        click_link("Por estado")
   end

   def navega_prioridade
        click_link('Por prioridade')
   end

   def navega_seriedade
        click_link('Por seriedade') 
   end

   def navega_categoria
        click_link('Por categoria')
   end

   def navega_resolucao
        click_link('Por resolução')
   end

   def navega_resumo_avancado
        click_link('Resumo Avançado')
   end

   #Método descer a página
   def reusumo_down
        find('body > div:nth-child(5) > span:nth-child(2) > a:nth-child(1)').send_keys(:down)
   end

   def visao_down
        find('td.menu:nth-child(1) > a:nth-child(1)').send_keys(:down)
   end

   def status_down
        find('body > div:nth-child(6) > span:nth-child(2) > a:nth-child(1)').send_keys(:down)
   end

   def prioridade_down
        find('body > div:nth-child(6) > span:nth-child(3) > a:nth-child(1)').send_keys(:down)
   end

   def seriedade_down
        find('span.bracket-link:nth-child(4) > a:nth-child(1)').send_keys(:down)
   end

   def categoria_down
        find('span.bracket-link:nth-child(5) > a:nth-child(1)').send_keys(:down)
   end

   def resolucao_down
        find('span.bracket-link:nth-child(6) > a:nth-child(1)').send_keys(:down)
   end

   def resumo_avancado_down
        find('span.bracket-link:nth-child(3) > a:nth-child(1)').send_keys(:down)
   end
end