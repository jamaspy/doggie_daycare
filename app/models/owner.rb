class Owner < ApplicationRecord
    has_many :dogs
    has_one :vet, through: :dog
end
