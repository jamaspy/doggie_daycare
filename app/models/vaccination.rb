class Vaccination < ApplicationRecord
    has_many :vets
    has_many :dogs
end
