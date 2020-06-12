class Member < ActiveRecord::Base
  has_many :personas
  has_many :guns, through: :personas
  has_many :addresses, through: :personas
  has_many :vehicles, through: :personas
  has_secure_password
end
# If @member && @member.authenticate(params[:password])
# redirect for good login
# else
# Redirect for failed login
# end
