
class Estrutura_investigativa < SitePrism::Page
  
    #Elementos Unidade
    element :sigla_unidade_input, 'input.ng-tns-c19-6'
    element :auto_complet, '.ui-autocomplete-list-item'
    
    element :descricao, '#descricaoUnidade'
    element :cep, '#cepUnidade'
    element :endereco, '#enderecoUnidade'
    element :cidade, '#cidadeUnidade'
    element :uf, '#uf'
    element :complemento, '#complemento'
    element :email, '#email'
    element :telefone, '#telefone'
    element :administrador_regional, 'input.ng-tns-c19-16'
    element :btn_salvar, 'button.btn:nth-child(2)'
    element :adicionar_subUnidade, 'button.btn:nth-child(3)'

    #Elementos SubUnidade
    element :sigla_subUnidade, 'input.ng-tns-c19-28'
    element :descricao, '#descricaoUnidade'
    element :cep, '#cepUnidade'
    element :endereco, '#enderecoUnidade'
    element :cidade, '#cidadeUnidade'
    element :uf, '#uf'
    element :complemento, '#complemento'
    element :email, '#email'
    element :telefone, '#telefone'
    element :administrador_regional, 'input.ng-tns-c19-16'
    element :btn_salvar, 'button.btn:nth-child(2)'

    #Elementos Nucleo
    element :sigla_nucleo_input, 'input.ng-tns-c19-6'
    element :descricao, '#descricaoUnidade'
    element :cep, '#cepUnidade'
    element :endereco, '#enderecoUnidade'
    element :cidade, '#cidadeUnidade'
    element :uf, '#uf'
    element :complemento, '#complemento'
    element :email, '#email'
    element :telefone, '#telefone'
    element :administrador_regional, 'input.ng-tns-c19-16'
    element :btn_salvar, 'button.btn:nth-child(2)'

    def sigla_unidade(metade_sigla, sigla_inteira)
        #setup configuração do método
        @result = [] 
        @i = 0

        find(:xpath, "(.//*[normalize-space(text()) and normalize-space(.)='*'])[1]/following::input[1]").send_keys metade_sigla
        sleep(5)

        #criando um array para armazer as linhas
        a = find('#siglaUnidade > span > div').text
        a.lines.each do |opcao|
            @result[@i] = opcao
            @i +=1
        end

        #trecho de código responsável para avaliar a unidade se está correspondendo ao valor contido na lista
        @i = 0
        @result.each do |lista|
            if lista == sigla_inteira
                #find("#siglaUnidade > span > div > ul > li:nth-child()").click
                find(:xpath, "//*[@id='siglaUnidade']/span/div/ul/li[#{@i + 1}]").click
            end
            @i +=1
        end
    end
   
    def cadastro_unidade
        unidade
        #sigla_unidade.click.set 'SR/PF/AP'
        telefone.set '99999999999'
        btn_salvar.click

        #'JOSE GUSTAVO DE MOURA LEITE'
        #'CARLOS JOSE DA SILVA PEREIRA'
        #'SANDRO JOSE NADOLNY'
    end

    def cadastro_subUnidade
        telefone.set '(99)99999-9999'

    end

    def cadastro_nucleo
        telefone.set '(99)99999-9999'   
    end

end