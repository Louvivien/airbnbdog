class Stroll < ApplicationRecord
	belongs_to :city
	has_many :dogs
	has_many :dogsitters
end
