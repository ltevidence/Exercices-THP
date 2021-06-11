require 'csv'

CSV.open("favorite_food.csv", "w") do |csv|
  csv << []
end