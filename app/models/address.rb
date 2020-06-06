class Address < ActiveRecord::Base
  belongs_to :member, through: :persona
end
