class Member < ActiveRecord::Base
  has_many :personas
  # has_secure_password
end
