puts "Donne moi un nombre :"
print "> "

chosen_number = gets.chomp.to_i

puts chosen_number
chosen_number.times do
    x = chosen_number -= 1
       puts x
end