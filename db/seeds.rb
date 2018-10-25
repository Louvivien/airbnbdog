require 'faker'
require 'as-duration'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 

100.times do
  city = City.create!(city_name: Faker::Address.city)
end
# Faker City

100.times do
   dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, city_id: Random.rand(1..80))
end
 100.times do
   dog = Dog.create!(dog_name: Faker::Name.first_name, master_first_name: Faker::Name.first_name, master_last_name: Faker::Name.last_name, master_email: Faker::Internet.email, city_id: Random.rand(1..80))
end


100.times do
  stroll = Stroll.create!(date: Faker::Time.between(DateTime.now + 1, DateTime.now + 8), city_id: Random.rand(1..80))
end
#Faker Strolls