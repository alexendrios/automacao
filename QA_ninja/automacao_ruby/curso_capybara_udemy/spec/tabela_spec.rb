describe 'Tabela', :tabela do

    before(:each) do
        visit '/tables'
    end

    it 'Deve Exibir o Salário do Stark' do
        atores = all('table tbody tr')

        stark = atores.detect {|ator| ator.text.include? 'Robert Downey Jr'}

         expect(stark.text).to include '$ 10.000.000'
    end 

    it 'Deve exibir o salário do Vin Diesel' do
        diesel = find('table tbody tr', text: 'Vin Diesel')
        expect(diesel.text).to include '$ 10.000.000'
    end

    it 'Deve exibir o filme velozes' do
        diesel = find('table tbody tr', text: 'Vin Diesel')
        filme = diesel.all('td')[2].text
        expect(filme).to eql 'Velozes e Furiosos'
    end

    it 'Deve selecionar Chris Prat para remoção', :remover do
        cris = find('table tbody tr', text: 'Chris Pratt')
        cris.find('a', text: 'delete').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    end

    it 'Deve selecionar Chris Prat para edição', :remover do
        cris = find('table tbody tr', text: 'Chris Pratt')
        cris.find('a', text: 'edit').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
    end
    
end