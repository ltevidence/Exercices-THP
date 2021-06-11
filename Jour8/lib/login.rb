def signup
puts "Renseigne un mot de passe :"
print "> "
password = gets.chomp
    return password
end

def ask_login(password)
    input = " "
    puts "Votre mot de passe est :"
    print "> "
    input = gets.chomp
   while input != password
        puts "Essaie encore !"
        print "> "
        input = gets.chomp
    end
end

def welcome_screen
puts "Vous êtes le bienvenue dans la zone secrete"
puts "Quels potins veux-tu savoir ?"
end

def perform
password = signup
ask_login(password)
welcome_screen 
end
perform