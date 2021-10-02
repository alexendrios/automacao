describe 'Caixa de opções', :dropdow do
    
    it 'Item Específico simples' do
        visit '/dropdown'

        select('Steve Rogers', from: 'dropdown')
    end

    it 'Item Específico com o find' do
        visit '/dropdown'
        
        selecao = find('.avenger-list')
        selecao.find('option', text: 'Natasha Romanoff').select_option
    end

    it 'Qualquer Item', :sample do
        visit '/dropdown'
        selecao = find('.avenger-list')
        selecao.all('option').sample.select_option
        sleep 5
    end
end