class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :coffeeshops

  has_secure_password
end
