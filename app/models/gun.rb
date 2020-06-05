class Gun < ActiveRecord::Base
  belongs_to :member, through: :persona
end
