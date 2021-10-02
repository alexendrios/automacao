=begin     
    Estrutrutura Condicional
    
    #if
    *elsif
=end

=begin
#if/else simples
carro = "verde"

if carro == "amarelo"
    p 'true'
else
    p 'false'
end

p carro.eql? 'amarelo'
=end

=begin
idade = 18

if idade >= 70 or idade > 100
    p 'Você não poderá mais dirigir'
elsif idade >= 18
    p 'Você já pode dirigir'
else
    p "Que pena não pode dirigir"
end
=end
=begin
or = ou
and = e 
!<variável>

> = maior
< = menor
== = igual
!= = diferente
=end

atributo = 10

case atributo
when 1
    p 'caso 1'
when 2
    p 'caso 2'
when 3
    p 'caso 3'
else
    p 'valor não encontrado'
end
