class Estrutura_Cadastro < SitePrism::Page

    element :email_input, '#email_create'
    element :cadastrar_button, '#SubmitCreate > span'
    element :tratamento_senhor, "#id_gender1"
    element :primeiro_nome_input, '#customer_firstname'
    element :sobreNome_input, "#customer_lastname"
    element :senha_input, "#passwd"
    element :noticia_select, '#uniform-newsletter'
    element :promocao_select, '#uniform-optin'
    element :companhia_input, '#company'
    element :endereco_input, '#address1'
    element :cidade_input, '#city'
    element :codigo_postal_input, '#postcode'
    element :anotacao_text_area, '#other'
    element :telefone_input, '#phone'
    element :celular_input, '#phone_mobile'
    element :endereco_entrega, '#alias'


    def inserir_email argumento
        email_input.set argumento
    end

    def cadastrar 
        cadastrar_button.click
    end

    def escolher_tratamento argumento
        if argumento.upcase == "SENHOR"
            tratamento_senhor.click
        else 
            find(:xpath, '//*[@id="uniform-id_gender2"]').click
            #find('#id_gender2').click
        end
    end

    def inserir_nome argumento
        primeiro_nome_input.set argumento
    end

    def inserir_sobreNome argumento
        sobreNome_input.set argumento
    end

    def inserir_senha argumento
        senha_input.set argumento
    end

    def escoler_mes argumento
        find('#uniform-months').click

        if argumento.eql? 'January'
            find('#months > option:nth-child(2)').select_option
        elsif argumento.eql? 'February' 
            find('#months > option:nth-child(3)').select_option
        elsif argumento.eql? 'March'
            find('#months > option:nth-child(4)').select_option
        elsif argumento.eql? 'April'
            find('#months > option:nth-child(5)').select_option
        elsif argumento.eql? 'May'
            find('#months > option:nth-child(6)').select_option
        elsif argumento.eql? 'June'
            find('#months > option:nth-child(7)').select_option
        elsif argumento.eql? 'July'
            find('#months > option:nth-child(8)').select_option
        elsif argumento.eql? 'August'
            find('#months > option:nth-child(9)').select_option
        elsif argumento.eql? 'September'
            find('#months > option:nth-child(10)').select_option
        elsif argumento.eql? 'October'
            find('#months > option:nth-child(11)').select_option  
        elsif argumento.eql? 'November'
            find('#months > option:nth-child(12)').select_option
        elsif argumento.eql? 'December'
            find('#months > option:nth-child(13)').select_option
        end
    end

    def inserir_dataNascimento argumento
        
        dataNascimento = argumento.split('/')
        dia = dataNascimento[0]
        mes = dataNascimento[1]
        ano = dataNascimento[2]
        mes_tratado = ''
        
        if mes.eql? '01'
           mes_tratado = 'January'               
        elsif mes.eql? '02' 
            mes_tratado = 'February' 
        elsif mes.eql? '03'
            mes_tratado = 'March' 
        elsif mes.eql? '04'
            mes_tratado ='April' 
        elsif mes.eql? '05'
            mes_tratado = 'May' 
        elsif mes.eql? '06'
            mes_tratado = 'June' 
        elsif mes.eql? '07'
            mes_tratado = 'July' 
        elsif mes.eql? '08'
            mes_tratado = 'August' 
        elsif mes.eql? '09'
            mes_tratado = 'September' 
        elsif mes.eql? '10'
            mes_tratado = 'October' 
        elsif mes.eql? '11'
            mes_tratado = 'November' 
        else
            mes_tratado ='December'    
        end


        select dia, :visible => false, from: 'days'
        escoler_mes mes_tratado
        #select mes_tratado, :visible => false, from: 'months'
        #find(:select, 'months', :visible => false).find("option[value='#{12}']", exact: true).select_option
        select ano, :visible => false, from: 'years'
    end

    def escolher_noticias argumento
        if argumento.upcase.eql? "SIM"
            noticia_select.click
        end
    end

    def escolher_promocao argumento
        if argumento.upcase.eql? "SIM"
            promocao_select.click
        end
    end

    def inserir_companhia argumento
        companhia_input.set argumento
    end

    def inserir_endereco argumento
        endereco_input.send_keys argumento
    end

    def inserir_cidade argumento
        cidade_input.set argumento
    end

    def inserir_estado argumento
        select argumento, :visible => false, from: 'id_state'
    end

    def inserir_codigo_postal argumento
        codigo_postal_input.set argumento
    end

    def escolher_pais argumento
        if argumento.upcase.eql? "ESTADOS UNIDOS"
            select 'United States', :visible => false, from: 'id_country'  
        end
    end

    def inserir_anotacoes argumento
        anotacao_text_area.send_keys argumento
    end

    def inserir_telefone argumento
        telefone_input.set argumento
    end

    def inserir_celular argumento
        celular_input.set argumento
    end

    def inserir_endereco_entrega argumento
        endereco_entrega.set argumento
    end

    def finalizar_cadastro
        click_button 'Register'
    end
end