describe 'Rodômicos', :rodomico do

    before(:each) do
        visit '/login2'
    end

    
    it 'Fazendo Login com Data de Nascimento' do
        
        #entrada
        
        user = 'stark'
        pass =  'jarvis!'

        usuaeio = find '#userId'
        senha = find 'input[name=password]'
        login_form = find '#login'
         
        #executando
        usuaeio.set user
        senha.set pass

        case login_form.text
        when /Dia/
            find('#day').set '29'
        when /Mês/
            find('#month').set '05'
        when /Ano/
            find('#year').set '1970'
        end

        click_button 'Login'
        
        expect(find('#flash')).to have_content  "Olá, Tony Stark. Você acessou a área logada!"
        
    end
    
   
    after(:each) do
        sleep 5
    end

end