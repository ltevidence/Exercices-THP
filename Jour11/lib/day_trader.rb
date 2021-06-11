trade = [17, 3, 6, 9, 15, 8, 6, 1, 10]


for y in 0..trade.length-2

  for i in y..trade.length-2

    puts "----------#{trade[y]}"

      a = trade[i+1] - trade[y]

      puts "[#{a}, #{y}, #{i+1}]"

  end


end