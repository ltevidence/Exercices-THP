require_relative "../lib/day_trader.rb"
#Un array de prix
#connaitre meilleur jour d'achat (plus petite valeur)
#connaitre meilleur jour de revente (plus grande valeur après achat)

#Pour acheter au meilleur prix

describe "the best_day_to_buy_or_sell method" do
  it "should find in an Array the smallest value" do
    expect(best_day_to_buy_or_sell([12,22,4,23,9,18,1,10])).to eq(4)
    expect(best_day_to_buy_or_sell([3,18,5,21,10,2,6,9])).to eq(5)
    expect(best_day_to_buy_or_sell([13,25,1,12,20,10,23,32])).to eq(1)
    expect(best_day_to_buy_or_sell([25,2,11,26,19,12,10,4])).to eq(2)
  end

  #Pour revendre au meilleur prix (après avoir ACHETE !!)

  it "should find in an Array the biggest value to buy" do
    expect(best_day_to_buy_or_sell([12,22,4,23,9,18,1,10])).to eq(23)
    expect(best_day_to_buy_or_sell([3,18,5,21,10,2,6,9])).to eq(21)
    expect(best_day_to_buy_or_sell([13,25,1,12,20,10,23,32])).to eq(32)
    expect(best_day_to_buy_or_sell([25,2,11,26,19,12,10,4])).to eq(26)
  end
end