class Address < ActiveRecord::Base
  belongs_to :persona
  has_one :member, through: :personas
end
