describe 'Meu Primeiro Script' do
    
    it 'visitar a pagina' do
        visit '/'
        p page.title
    end
end
