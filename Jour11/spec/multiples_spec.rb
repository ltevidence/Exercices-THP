require_relative '../lib/multiples.rb'
#boucle de 0 à 1000
#test si multiple de 3 ou 5 et mettre dans un array
#Faire la somme des nombres entiers multiple de 3 ou 5 uniquement entre 0 et
#1000

describe "The is_multiple_of_3_or_5? method" do 
  it "should return TRUE when an integer is a multiplier of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end
  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(2)).to eq(false)
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
    expect(is_multiple_of_3_or_5?(64)).to eq(false)
  end
end

#10 return 23
#11 return 33
#0 ou 3 return 0
#-1, 1.23 ou "chiffre" return "Yo ! Tu nous prends pour des jambons, on est
#pas des entiers naturels."

describe "The sum_of_3_or_5_multiple" do
  it "should return a result even 0" do
      expect(sum_of_3_or_5_multiple(10)).to eq(23)
      expect(sum_of_3_or_5_multiple(11)).to eq(33)
      expect(sum_of_3_or_5_multiple(3)).to eq(0)
  end
  it "should not accept the number because it is not an integer" do
      expect(sum_of_3_or_5_multiple(-1)).to eq("Yo ! Tu nous prends pour des jambons, on est pas des entiers naturels.")
      expect(sum_of_3_or_5_multiple(1.23)).to eq("Yo ! Tu nous prends pour des jambons, on est pas des entiers naturels.")
      expect(sum_of_3_or_5_multiple("22")).to eq("Yo ! Tu nous prends pour des jambons, on est pas des entiers naturels.")
  end
end
#boucle de 0 à final_number