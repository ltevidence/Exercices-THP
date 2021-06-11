puts "Combien d'adresse mail souhaitez vous ?"


i = 0
y = 0


email = []
50.times do
    email[i] ="loick.jouan#{y += 1}@gmail.com"
    i = i + 1
end
puts "#{email}"
puts "Il y a #{email.length} mails dans l'Array"