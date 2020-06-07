class Address < ActiveRecord::Base
  has_one :member, :through => :persona
end
