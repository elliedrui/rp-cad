class Persona < ActiveRecord::Base
  belongs_to :member
  has_one :agency, :through => :govs
end
