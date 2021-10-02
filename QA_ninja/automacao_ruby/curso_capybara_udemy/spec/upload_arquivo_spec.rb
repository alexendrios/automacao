
describe 'Upload de Arquivos', :upload do

    before(:each) do
        visit '/upload'
        
        @documento_texto = 'arquivo.txt'
        @documento_imagem = 'qa_ninja.jpg'
        @arquivo = Dir.pwd + '/spec/fixtures/'+ @documento_texto
        @imagem = Dir.pwd + '/spec/fixtures/' + @documento_imagem
    end

    it 'Upload com Arquivo Texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find '#uploaded-file'

        expect(div_arquivo.text).to eql @documento_texto

    end

    it 'Upload com Arquivo Imagem' do
        attach_file('file-upload', @imagem)
        click_button 'Upload'

       
        sleep 5
        div_arquivo = find '#new-image'
        expect(div_arquivo[:src]).to include 'uploads/'+@documento_imagem

    end

    after(:each) do
        sleep 3
    end

end