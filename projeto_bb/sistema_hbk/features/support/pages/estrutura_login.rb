class EstruturaLogin < SitePrism::Page

=begin

    * Classe contendo o mapeamaneto dos forms referente ao Login do sistema HBK - BBB
    * Script desenvolvido por Alexandre Pereira Santos
   
    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490
   
    By Jan 2018

=end 

   #mapeamento estrutura formulário
    element :selecao_titular_input, '#formLogin > fieldset > ul > li.saltaLin > label > select'
    element :agencia_input, '#formLogin > fieldset > ul > li:nth-child(2) > label > input'
    element :conta_input, '#formLogin > fieldset > ul > li:nth-child(3) > label > input'
    element :senha_oito_digitos_input, '#formLogin > fieldset > ul > li:nth-child(4) > label > input'
    element :entrar_input, '#formLogin > fieldset > ul > li:nth-child(6) > input'
    element :limpar_input, '#formLogin > fieldset > ul > li:nth-child(7) > input'


    #botões
    def entrar
        entrar_input.click
    end

    def limpar
        limpar_input.click
    end

    #interacao
    def selecao_titular titular 
        if titular == '1º Titular'
            find('#formLogin > fieldset > ul > li.saltaLin > label > select > option:nth-child(1)').click
        elsif titular == '2º Titular'
            find('#formLogin > fieldset > ul > li.saltaLin > label > select > option:nth-child(2)').click
        elsif titular == '3º Titular'
            find('#formLogin > fieldset > ul > li.saltaLin > label > select > option:nth-child(3)').click
        elsif titular == '4º Titular'
            find('#formLogin > fieldset > ul > li.saltaLin > label > select > option:nth-child(4)').click
        end
    end

    def agencia info_agencia
        agencia_input.click.set info_agencia
    end

    def conta info_conta
        conta_input.click.set info_conta
    end

    def senha_oito_digitos info_senha_oito
        senha_oito_digitos_input.click.set info_senha_oito
    end
end