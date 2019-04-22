class Vaccination < ApplicationRecord
    has_and_belongs_to_many :vets
    has_and_belongs_to_many :dogs
end
