require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
    set :public_folder, 'public'
    set :views, 'app/views'
  end


  get "/" do
    logged_in_user_id = session[:user_id]
    @user = Member.find_by(id: logged_in_user_id)
    erb :welcome
  end

  helpers do

    def logged_in
      #just returns true or false if someone is logged in
      !!session[:user_id]
    end

    def current_user
      @current_user ||= Member.find_by(id: session[:user_id])
    end

  end

end
