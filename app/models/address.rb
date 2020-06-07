class Address < ActiveRecord::Base
  belongs_to :persona ##, -> {joins(:personas)} #oh god, what? 
end
