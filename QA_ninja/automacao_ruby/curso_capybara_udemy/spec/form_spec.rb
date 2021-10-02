describe 'Formulário' do
    
    it 'login com sucesso' do
        visit '/login'
=begin
        A função fill_in posso utilizar
        * name
        * id
=end       
        #fill_in 'username', with: 'stark'
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        click_button 'Login'

#validações
       expect(find('#flash').visible?).to be true
        
       expect(find('#flash').text).to include "Olá, Tony Stark. Você acessou a área logada!"

       #forma mais limpa
       expect(find('#flash')).to have_content  "Olá, Tony Stark. Você acessou a área logada!"

    end
end