puts "Quel est ton age"
print "> "
chosen_number = Integer(gets.chomp)
actual_year =  2021
i = (actual_year -=1)

chosen_number.upto(actual_year - actual_year) { |i| 
    puts "#{i}" }

