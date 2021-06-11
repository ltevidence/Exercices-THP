puts "Donne moi ton année de naissance :"
print "> "

birth_year = gets.chomp.to_i
actual_year = 2021

birth_year.upto(actual_year) { |i|
    puts "#{i}"}