class Persona < ActiveRecord::Base
  belongs_to :member
  has_many :guns
  has_many :addresses
  has_many :vehicles
  has_one :agency, :through => :govs
  
end
