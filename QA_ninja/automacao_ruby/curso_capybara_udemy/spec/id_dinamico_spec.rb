describe 'Id dinâmicos', :id do

    before(:each) do
        visit '/access'
    end

    it 'Fazendo Cadastro' do  

        find('input[id$=UsernameInput]').set 'Alexandre'
        find('input[id^=PasswordInput]').set '123456'
        find('a[id*=GetStartedButton]').click

        expect(find('#result')).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end