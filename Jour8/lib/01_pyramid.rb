def half_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "

upstair = gets.chomp.to_i
i=1

puts "Voici ta pyramide :"
print "\n"
i.upto(upstair) do
    upstair.times do
      print ' '
    end
  
    (2* i - 1).times do
      print '#'
    end
  
    print "\n"
  
    upstair -= 1
    i += 1
end
end

half_pyramid