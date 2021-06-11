puts "Donne moi ton année de naissance :"
print "> "

birth_year = gets.chomp.to_i
actual_year = 2021
age = actual_year - birth_year
age_birth = 0

puts "En #{birth_year}, tu avais #{age_birth} ans."

age.times do 
puts "En #{birth_year +=1}, tu avais #{age_birth +=1} ans."
end