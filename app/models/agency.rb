class Agency < ActiveRecord::Base
  belongs_to :govs
  has_many :personas, through: :govs
end
