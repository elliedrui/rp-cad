class Address < ActiveRecord::Base
  belongs_to :member ##, -> {joins(:personas)} #oh god, what? 
end
