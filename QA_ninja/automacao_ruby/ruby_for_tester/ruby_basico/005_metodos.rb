#Exemplos de Métodos

def mensagem
  return "Olá!!"
end

def retorno_nome
  #O retorno ruby sempre por default irá retornar a ultima instrução
  "Alexandre"
end

def soma(val1, val2)
  val1 + val2
end

msm = mensagem
retorno = retorno_nome

puts "\n#{retorno}\n#{msm}"

resultado = soma 10, 5
p resultado
