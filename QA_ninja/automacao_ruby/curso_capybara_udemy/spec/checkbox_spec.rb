
describe 'Trabalhando com Checkbox', :checkbox do
    
    before(:each) do
        visit '/checkboxes'
    end
   
    #selecionando pelo id
    it 'Marcando uma opção' do  
        check 'thor'  
    end

    #selecionando pelo name
    it 'Desmarcando uma Opção' do
        uncheck 'antman'
    end

    it 'Marcando com find set true' do
        find('input[value=cap]').set true
    end

    it 'Marcando com find set false' do
        find('input[value=guardians]').set false
    end

    after(:each) do
        sleep 3
    end

end