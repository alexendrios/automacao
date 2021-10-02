describe "fazer uma requisição" do
    it 'get' do
        # @promeira_opcao = HTTParty.get('https://inmetrics:automacao@inm-api-test.herokuapp.com/empregado/list_all')
        # p @promeira_opcao
        @segunda_opcao = Contato.get('/list_all')
        p @segunda_opcao
    end
end
