class Gov < ActiveRecord::Base
  # a gov is a government employee
  belongs_to :personas
  belongs_to :agency
end
