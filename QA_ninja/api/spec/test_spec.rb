

describe 'teste' do
    
    it 'soma' do
        v1 = 1
        v2 = 2
        resultado = v1 + v2
        p "#{v1} + #{v2} = #{resultado}"
        expect(resultado).to eql 3
    end
end