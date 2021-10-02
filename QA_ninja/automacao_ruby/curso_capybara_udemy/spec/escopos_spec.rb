describe 'Escopos', :login2 do

    before(:each) do
        visit '/access'
    end


    it 'Fazendo Login com Sucesso' do
        
        #entrada
        
        user = 'stark'
        pass =  'jarvis!'

        login_form = find '#login'
        usuario = login_form.find('input[name=username]')
        senha = login_form.find('input[name=password]')
         
        #executando
        usuario.set user
        senha.set pass

        click_button 'Entrar'
        
        expect(find('#flash')).to have_content  "Olá, Tony Stark. Você acessou a área logada!"
    end

    it 'Fazendo Login com Sucesso 2' do  

        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end
       
        expect(find('#flash')).to have_content  "Olá, Tony Stark. Você acessou a área logada!"
    end

    it 'Fazendo Cadastro' do
        within('#signup') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_link 'Criar Conta'
        end
        expect(find('#result')).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end