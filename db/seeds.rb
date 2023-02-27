# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

number_of_donuts = 10
number_of_users = 5

puts "removing all traces of donut"
Donut.destroy_all
User.destroy_all
puts "***"
puts "***"
puts "***"
puts "***"
puts "Donuts destroyed"

puts "Creating #{number_of_donuts} donuts"

user1 = User.create(email: "janagerrard@gmail.com", password: "password", username: "jana_gerrard")
number_of_donuts.times do
  Donut.create(title: "#{Faker::Verb.past_participle} #{Faker::Food.dish}",
    description: "#{Faker::Food.description}",
    flavour: "#{Faker::Food.spice}",
    location: "#{Faker::Address.city}",
    wholeness: rand(1..100),
    user_id: user1.id)
end
puts user1.valid?

user2 = User.create(email: "joelsavage@gmail.com", password: "password", username: "joel_savage")
number_of_donuts.times do
  Donut.create(title: "#{Faker::Verb.past_participle} #{Faker::Food.dish}",
    description: "#{Faker::Food.description}",
    flavour: "#{Faker::Food.spice}",
    location: "#{Faker::Address.city}",
    wholeness: rand(1..100),
    user_id: user2.id)
end
puts user2.valid?

user3 = User.create(email: "nickodon@gmail.com", password: "password", username: "nick_o_don")
number_of_donuts.times do
  Donut.create(title: "#{Faker::Verb.past_participle} #{Faker::Food.dish}",
    description: "#{Faker::Food.description}",
    flavour: "#{Faker::Food.spice}",
    location: "#{Faker::Address.city}",
    wholeness: rand(1..100),
    user_id: user3.id)
end
puts user3.valid?

user4 = User.create(email: "nikstojkov@gmail.com", password: "password", username: "nik_stojkov")
number_of_donuts.times do
  Donut.create(title: "#{Faker::Verb.past_participle} #{Faker::Food.dish}",
    description: "#{Faker::Food.description}",
    flavour: "#{Faker::Food.spice}",
    location: "#{Faker::Address.city}",
    wholeness: rand(1..100),
    user_id: user4.id)
end
puts user4.valid?

puts "#{number_of_donuts} donuts created"
