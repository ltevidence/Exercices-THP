# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'table_print'



nb_city = 5
nb_users = 20
nb_listings = 50
nb_reservations = 10
cities = []
users = []
listings = []
reservations = []

#Creation des villes
nb_city.times do |x|
  city = City.create(city_name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  cities << city
  puts "Seeding City nb#{x}"
end

#Creation des users
nb_users.times do |x|
	user = User.create(
		name: Faker::Name.first_name,
    email: Faker::Internet.email,
    phone_number: Faker::Base.numerify('06########'),
    description: Faker::Lorem.sentences(number: 2))
	users << user
	puts "Seeding User nb#{x}"
end

#Creation des listings
nb_listings.times do |x|
	listing = Listing.create(
    welcome_message: "Bienvenue chez vous !",
    description: Faker::Lorem.sentences(number: 2),
		available_beds: rand(0..5),
    has_wifi: true,
    price: rand(54..236),
		city_id: cities[rand(0..nb_city-1)].id)
	listings << listing
	puts "Seeding Listing nb#{x}"
end

nb_reservations.times do |x|
	reservation = Reservation.create(
	  start_date: Faker::Date.between(from: 2.days.ago, to: '2022-01-01'),
    end_date: Faker::Date.between(from: 2.days.ago, to: '2022-01-01'),
    user_id: users[rand(0..nb_users-1)].id,
    listing_id: listings[rand(0..nb_listings-1)].id)
	reservations << reservation
	puts "Seeding Reservation nb#{x}"
end



