class Dog < ApplicationRecord
   belongs_to :owner, :optional => true
   belongs_to :vet, :optional => true
   has_and_belongs_to_many :services
   has_and_belongs_to_many :vaccinations
end
