email = []
y = 0
i = 0

50.times do 
  if y < 9
    if y.even?
      email[i] = "jean.dupont0#{y +=1}@email.com"
      i = i + 1
    else
      puts email[i] = "jean.dupont0#{y +=1}@email.com"
      i = i + 1
    end
  else
    if y.even?
      email[i] = "jean.dupont#{y +=1}@email.com"
      i = i + 1
    else
      puts email[i] = "jean.dupont#{y +=1}@email.com"
      i = i + 1
    end
  end
end

puts "#{email}"
puts "Il y a #{email.length}emails dans le tableau"