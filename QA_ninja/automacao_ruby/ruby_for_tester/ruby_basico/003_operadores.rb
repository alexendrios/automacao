#Operadores

numero1 = 0
numero2 = 0
total = 0

#Programa Caluculadora - Iteração com o Console
puts "\nCalculadora:\n"
#entrada
print "Informe o numero 1: "
numero1 = gets.chomp.to_i
print "Informe o numero 2: "
numero2 = gets.chomp.to_i

#processamento
#total = numero1 + numero2
#total = numero1 - numero2
#total = numero1 * numero2
total = numero1.to_f / numero2.to_f

#saida
puts "\n#{numero1} + #{numero2} = #{total}"
