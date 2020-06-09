class Gov < ActiveRecord::Base
  # a gov is a government employee
  belongs_to :persona
  belongs_to :agency
end
