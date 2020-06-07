class Agency < ActiveRecord::Base
  has_many :personas, :through => :gov
end
