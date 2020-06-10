class Gun < ActiveRecord::Base
  belongs_to :personas
  has_one :member, through: :personas
end
