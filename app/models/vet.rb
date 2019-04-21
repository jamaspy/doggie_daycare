class Vet < ApplicationRecord
    has_many :dogs
    has_many :owners, through: :dogs
    has_many :vacinations
end
