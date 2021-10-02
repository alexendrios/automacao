=begin   
#for

i = 0
for i in (1..10) do
    p i
end


i = 0
while i <= 10
    p i 
    i += 1
end


i = 0
loop do
    p i  
    i += 1
end


i = 1
10.times do
    p i  
    i +=1
end
=end

array = [0, 10, 20, 30, 40]

array.each  do |valor| 
    p valor
end

nome = "Alexandre"

p nome.upcase.scan "A"








