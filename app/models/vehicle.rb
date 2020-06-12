class Vehicle < ActiveRecord::Base
  belongs_to :persona
  has_one :member, through: :persona
  # can add validation to force no empty fields
  validates :plate_number, presence: :true
end
