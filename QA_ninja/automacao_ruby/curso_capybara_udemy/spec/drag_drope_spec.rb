describe 'Drag and Drop', :drop do

    before(:each) do
        visit '/drag_and_drop'
    end

    it 'Movendo imagem' do
        local_alvo = find '.team-stark .column'
        local_inicio = find '.team-cap .column'
        card = find 'img[alt$=Aranha]'

        card.drag_to local_alvo
        
        expect(local_alvo).to have_css 'img[alt$=Aranha]'
        expect(local_inicio).not_to have_css 'img[alt$=Aranha]'
    end

    
   
    after(:each) do
        sleep 0.5
    end

end