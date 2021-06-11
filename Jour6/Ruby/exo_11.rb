puts "C'est quoi ton âge : "
print "> "

birth_year = gets.chomp.to_i
age_birth = 0

puts "Il y a #{birth_year} ans, tu avais #{age_birth} ans."

birth_year.times do 
puts "Il y a #{birth_year -=1} ans, tu avais #{age_birth +=1} ans."
end