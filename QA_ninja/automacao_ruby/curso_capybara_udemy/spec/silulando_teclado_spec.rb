describe 'Teclado', :teclado do

    before(:each) do
        visit '/key_presses'
    end

    it 'Simulando as Teclas do Teclado SPACE' do
        campo = find '#campo-id'
        campo.send_keys :space

        expect(page).to have_content 'You entered: SPACE'
    end

    it 'Simulando as Teclas do Teclado TAB' do
        campo = find '#campo-id'
        campo.send_keys :tab

        expect(page).to have_content 'You entered: TAB'
    end

    it 'Simulando as Teclas' do
        teclas = %i[tab escape space enter shift control alt]

        campo = find '#campo-id'
        teclas.each do |tecla|
            campo.send_keys tecla
            expect(page).to have_content "You entered: #{tecla.to_s.upcase}"
            sleep 1
        end
        
    end

    it 'Simulando as Teclas do Teclado Letras' do
        teclas = %w[a l e x a n d r e]

        campo = find '#campo-id'
        teclas.each do |tecla|
            campo.send_keys tecla
            expect(page).to have_content "You entered: #{tecla.upcase}"
            sleep 1
        end
        
    end
    
   
    after(:each) do
        sleep 2
    end

end