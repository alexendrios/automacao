class Estrutura < SitePrism::Page
    
    elements :tabela, 'tr > td' 

    def visualizar_tabela
        tamanho = tabela.size

         if tabela[11].text eql? "Distrito Federal"
            find('#mw-content-text > div > table.wikitable > tbody > tr:nth-child(4) > td:nth-child(2) > a:nth-child(2)').click
         end
    end
end