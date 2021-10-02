describe 'SWlectors Regex', :selector do

    before(:each) do
        visit '/hovers'
    end

    it 'Quando passo o mouse sobre o Blade' do
        card = find 'img[alt^=Blade]'
        card.hover

        puts "O elemento contém a palavra Blade"
        expect(page).to have_content "Nome: Blade"
    end

    it 'Quando passo o mouse sobre o Pantera Negra' do
        card = find 'img[alt^=Pantera]'
        card.hover

        puts "O elemento inicia a palavra Pantera"
        expect(page).to have_content "Nome: Pantera Negra"
    end

    it 'Quando passo o mouse sobre o Homem Aranha' do
        card = find 'img[alt$=Aranha]'
        card.hover

        puts "O elemento termina a palavra Aranha"
        expect(page).to have_content "Nome: Homem Aranha"
    end
   
    after(:each) do
        sleep 0.5
    end

end