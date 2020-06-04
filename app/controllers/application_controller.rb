require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, SecureRandom.hex(64)
    set :public_folder, 'public'
    set :views, 'app/views'
  end


  get "/" do
    # logged_in_user_id = session[:user_id]
    #@user = Member.find_by(id: logged_in_user_id)
    erb :welcome
  end



end
