
class User < ApplicationRecord
  has_secure_password
  # Rails Validations -- see the Rails Guide
  validates :email, :presence => true, :uniqueness => true
end
