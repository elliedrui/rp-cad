class Persona < ActiveRecord::Base
  belongs_to :member
  has_one :agency, through: :govs
  has_many :guns
  has_many :vehicles
  has_many :addresses
end
