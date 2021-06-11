puts "Donne moi un nombre : "
print "> "

chosen_number = gets.chomp.to_i

chosen_number.times do |i|
    puts i + 1
end
