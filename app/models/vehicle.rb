class Vehicle < ActiveRecord::Base
  belongs_to :persona
  has_one :member, through: :persona
end
