class Member < ActiveRecord::Base
  has_many :personas
  # has_many :guns, through: :personas
  # has_many :addresses, through: :personas
  # has_many :vehicles, through: :personas
  has_one :admin_level
  has_secure_password
end
