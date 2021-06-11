def say_hello
    puts "Donne moi ton nom : "
    print "> "
    first_name = gets.chomp
    puts "Bonjour #{first_name}"
end

say_hello