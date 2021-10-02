def ver_idade idade
    if idade >= 18
        return "true"
    else
        return 'false'
    end
end

def verificar_carro status
    case status
        when 'chave'
            return 'ligado'
        when 'freio'
            return 'parado'
        else
            return 'sem opção'
    end
end

def verificar_condicoes_idade idade
    if idade >= 70 or idade > 100
        return 'Você não poderá mais dirigir'
    elsif idade >= 18
         return 'Você já pode dirigir'
    else
        return "Que pena não pode dirigir"
    end
end

idade = 21
estado_carro = 'ligado'
#p ver_idade idade

#p verificar_carro estado_carro
p verificar_condicoes_idade idade
