

Equipe

C. Avronsart & V. Richaud & L. Martin du Nord & P. de la Tour & F. Pinto & A. Reaus

Objectif 
Faire une plateforme où des personnes pourraient promener des chiens, en échange de $€


X Dogsitter : promeneur de chien
	- Un dogsitter pourrait promener plusieurs chiens
	- A travers un stroll   			
	- Un promeneur ne peut appartenir qu'a une ville.

Table dogsitter promneyr de chien
	first_name
	last_name
	email
	city_id => référence à la table city

	id_stroll => pas besoin de clé 
	id_dog => pas besoin de clé


require 'faker'
100.times do
   dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, city_id: Random.rand(1..80))
end


Model dogsitter
	belongs to :city
	has_many :strolls
	has many :dogs through: :stroll
	

X Dog
- Un dog pourraient avoir plusieur dogsitter
- A travers un stroll				has_many :through
- un chien ne peut appartenir qu'a une ville.

Table dog
	dog_name
	master_first_name
	master_last_name
	master_email
	id_city => reference a une autre table, la table city

	id_stroll => pas besoin de référence ici
	

Model dog
	belongs to :city
	has many :strolls
	has many :dogsitters through: :stroll


require 'faker'
100.times do
   dogs = Dog.create!(dog_name: Faker::Creature::Dog.name, master_first_name: Faker::Name.first_name, master_last_name: Faker::Name.last_name, master_email: Faker::Internet.email, city_id: Random.rand(1..80), stroll_id: Random.rand(1..80))
end

X Stroll promenade  cf. appointment pour le doctolib

Table stroll
	date
	time
	id_city
	id_dog
	id_dogsitter


Model
	belongs to :city
	has many :dogs
	has many :dogsitters

require 'as-duration'
100.times do
   strolls = Stroll.create!(date: Faker::Date.forward(23), time: Faker::Time.between(2.days.ago, :all), city_id: Random.rand(1..80), dog_id: Random.rand(1..80), dogsitter_id: Random.rand(1..80))
end

X City
Tu veux préciser la ville des promeneurs et des chiens 
plusieurs promeneurs et plusieurs chien		has_many :through

Table city
créer une table City avec comme attribut city_name
	city_name
	id_dog
	id_dogsitter
	id_stroll

Model city
	has many dogs
	has many dogsitters
	has many strolls

require 'faker'
100.times do
  city = City.create!(city_name: Faker::Address.city)
end

ne pas oublier le seeds.rb 

