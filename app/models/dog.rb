class Dog < ApplicationRecord
   belongs_to :owner, :optional => true
   belongs_to :vet, :optional => true
   has_many :services
   has_many :vaccinations
end
