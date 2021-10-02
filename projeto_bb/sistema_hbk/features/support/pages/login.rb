class Login < SitePrism::Page
=begin

    * Classe contendo a interação com a classe estrutura Login do sistema HBK - BBB
    * Script desenvolvido por Alexandre Pereira Santos
   
    * Contact: 
        1 - email: alex.endrios@hotmail.com
        2 - celular: 61-992861490
   
    By Jan 2018

=end 
    def initialize
        @estrutura = EstruturaLogin.new
    end

    #Funcionalidades
    def logar dados

        @estrutura.selecao_titular dados[0]
        @estrutura.agencia dados[1]
        @estrutura.conta dados[2]
        @estrutura.senha_oito_digitos dados[3]

        @estrutura.entrar
    end
end