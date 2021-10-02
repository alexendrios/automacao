class Cadastrar < SitePrism::Page

    def initialize
        @menu = Menu.new
        @cadastro = Estrutura_Cadastro.new
    end

    def cadastrar argumento
        @menu.escolher_menu argumento[0]
        @cadastro.inserir_email argumento[1]
        @cadastro.cadastrar
        @cadastro.escolher_tratamento argumento[2]
        @cadastro.inserir_nome argumento[3]
        @cadastro.inserir_sobreNome argumento[4]
        @cadastro.inserir_senha argumento[5]
        @cadastro.inserir_dataNascimento argumento[6]
        @cadastro.escolher_noticias argumento[7]
        @cadastro.escolher_promocao argumento[8]
        @cadastro.inserir_companhia argumento[9]
        @cadastro.inserir_endereco argumento[10]
        @cadastro.inserir_cidade argumento[11]
        @cadastro.inserir_estado argumento[12]
        @cadastro.inserir_codigo_postal argumento[13]
        @cadastro.escolher_pais argumento[14]
        @cadastro.inserir_anotacoes argumento[15]
        @cadastro.inserir_telefone argumento[16]
        @cadastro.inserir_celular argumento[17]
        @cadastro.inserir_endereco_entrega argumento[18]
        @cadastro.finalizar_cadastro
    end
    
end