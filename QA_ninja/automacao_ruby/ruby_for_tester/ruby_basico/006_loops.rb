#times
puts "\nSaída loop times"
10.times do |i|
  puts i
end

#for
puts "\nSaída loop for"
for i in 0..9
  puts i
end

#while
puts "\nSaída loop while"
$i = 0
while $i < 10
  puts $i
  $i += 1
end

#each
puts "\nSaída loop each"
v = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
v.each do |n|
  puts n
end

#loop
puts "\nSaída loop infinito"
loop do
  puts "Loop Infinito"
end
