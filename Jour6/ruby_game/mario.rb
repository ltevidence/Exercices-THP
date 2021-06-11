puts "Donne moi ton année de naissance"
print "> "
chosen_number = Integer(gets.chomp)
actual_year =  2021

chosen_number.upto(actual_year) { |i| 
    puts "#{i}"}


