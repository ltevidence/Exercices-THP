puts "Combien d'etages sur votre pyramide ?"
print "> "

nb_floor = gets.chomp.to_i
x_hash = 1
x_space = nb_floor - 1

nb_floor.times do
    x_space.times do
        print " "
    end
    x_space -= 1
    x_hash.times do
        print "#"
    end
    x_hash += 1
    puts " "
end