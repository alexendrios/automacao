describe 'Trabalhando com Checkbox', :radio do
    
    before(:each) do
        visit '/radios'
    end
   
   
    it 'Seleçao por id' do  
        choose 'cap'
    end

   it 'seleção por find e css selector' do
        #find('input[value=iron-man]').set true
        find('input[value=iron-man]').click
   end

    after(:each) do
        sleep 3
    end

end