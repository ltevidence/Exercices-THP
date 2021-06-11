# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

nb_user = 10
nb_city = 10
nb_gossip = 20
nb_tags = 10
users = []
cities = []
gossips = []
tags = []

#seeding des villes
nb_city.times do |x|
	city = City.create(
		name: Faker::Address.city,
		zip_code: Faker::Address.zip_code)
	cities << city
 	puts "Seeding vity nb#{x}"
end


#Seeding des users
nb_user.times do |x|
	user = User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		description: Faker::Lorem.paragraph,
		email: Faker::Internet.email,
		age: rand(16..80),
		city_id: cities[rand(0..nb_city-1)].id)
	users << user
 	puts "Seeding user nb#{x}"
end

# Seed des gossips
nb_gossip.times do |x|
	gossip = Gossip.create(
			title: Faker::Book.title,
			content: Faker::Lorem.paragraph,
			user_id: users[rand(0..nb_user-1)].id)
	gossips << gossip
 	puts "Seeding gossip nb#{x}"
end

#Seed des tags
nb_tags.times do |x|
	tag = Tag.create(
		title: Faker::Book.genre)
	tags << tag
 	puts "Seeding tag nb#{x}"
end

#seed des gossip_tags (1 par gossip)
nb_gossip.times do |x|
	GossipTag.create(
			gossip_id: gossips[x],
			tag_id: tags[rand(0..nb_tags-1)].id)
	puts "Seeding a tag to the gossip nb#{x}"
end

#seed de tags supplementaires
10.times do |x|
	GossipTag.create(
			gossip_id: gossips[rand(0..nb_gossip-1)],
			tag_id: tags[rand(0..nb_tags-1)].id)
	puts "Seeding a tag to the gossip nb#{x}"
end
