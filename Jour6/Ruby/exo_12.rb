puts "C'est quoi ton âge : "
print "> "

birth_year = gets.chomp.to_i
age_birth = 0

puts "Il y a #{birth_year} ans, tu avais #{age_birth} ans."

birth_year.times do 
    birth_year -= 1
    age_birth += 1
if birth_year == age_birth
    puts "Il y a #{birth_year} ans, tu avais la moitié de ton âge actuel."
else
    puts "Il y a #{birth_year} ans, tu avais #{age_birth} ans."
    end
end
