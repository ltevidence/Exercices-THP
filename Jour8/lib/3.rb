def wtf_pyramid1
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "

upstair = gets.chomp.to_i
i=1

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
    return upstair
end

def wtf_pyramid2
downstair = gets.chomp.to_i
i=0

i.downto(downstair) do
    downstair.times do
      print '#'
    end
  
    (2 * i + 1).times do
      print ' '
    end
  
    print "\n"
  
    downstair += 1
    i -= 1
end
    return downstair
end

def result(upstair, downstair)
puts "Voici ta pyramide :"
print "\n"

end

def wtf_pyramid
    upstair = wtf_pyramid1
    downstair = wtf_pyramid2

end

wtf_pyramid