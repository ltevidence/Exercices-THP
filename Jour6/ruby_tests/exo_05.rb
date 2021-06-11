puts "On va compter les nombres d'heures de travail à THP"
puts "Travail : #{10 * 5 * 11 * 60}"
#la balise #{} permet d'effectuer une opération ou de définir une comparaison
#entre deux valeurs (5 > 2 ou 2 < 7)
#Elle permet dans une string de pouvoir insérer des integer considéré en valeurs.
puts "En minutes ça fait : #{10 * 5 * 11 * 60}"

puts "Et en secondes ?"
#Ici puts nous permet d'effectuer un calcul car pas de "" les valeurs sont considérées comme des Integer
puts 10 * 5 * 11 * 60 * 60

puts "Est-ce que c'est vrai que 3 + 2 < 5 - 7"
puts 3 + 2 < 5 - 7
#Dans cet exemple #{} permet d'effectuer une addition ou une soustraction
puts "Ca fait combien 3 + 2 ? #{3 + 2}"
puts "Ca fait combien 5 - 7 ? #{5 - 7}"

puts "Ok, c'est faux alors !"

puts "C'est drôle ça, faisons en plus :"
#puts déclare une suite de caractère et la balise #{} determine si elle est vraie ou fausse
puts "Est-ce que 5 est plus grand que -2 ? #{5 > -2}"
puts "Est-ce que 5 est supérieur ou égal à -2 ? #{5 >= -2}"
puts "Est-ce que 5 est inférieur ou égal à -2 #{5 <= -2}"