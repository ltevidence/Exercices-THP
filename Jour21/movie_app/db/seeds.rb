# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
genre_array = ["action","horreur","comédie","drame"]
100.times do
  movie = Movie.create!(
    #Nom de film plausible ✅
    name: Faker::Movie.title, 
    #Année de sortie comprise entre 1900 et 2020 ✅
    year: Faker::Number.within(range: 1900..2020), 
    #Genre défini par un choix random dans l'array genre_array ✅
    genre: genre_array.sample, 
    #Synopsis de 10 mots mini ✅
    synopsis: Faker::Lorem.sentence(word_count: 10)  , 
    #Nom de réalisateur plausible ✅
    director: Faker::Name.name, 
    #Rating Allociné au format FLOAT 0.0 a 5.0 ✅
    allocine_rating: Random.new.rand(0.0..5.0).round(1),
   #My_Rating = nil ✅
    my_rating: nil,
    #Booleans = False ✅
    already_seen: false)
end
