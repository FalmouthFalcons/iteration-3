
class User < ApplicationRecord
  has_secure_password

  validates_uniqueness_of :email

  # A Customer can have many payment types.
  has_many :payment_types
  has_many :orders

end
