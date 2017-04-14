class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :coffeeshops

  has_secure_password # THIS DOESN'T WORK orz
end
