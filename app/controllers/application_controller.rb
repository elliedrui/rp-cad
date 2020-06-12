require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "omgwhy" # work on this , figure it out TODO
    set :public_folder, 'public'
    set :views, 'app/views'
  end

 

  @community = "Flatiron School Project RP"

  get "/" do
    erb :"welcome"
  end


  helpers do

    def logged_in?
      !!session[:user_id]
    end

    def current_user
      @current_user ||= Member.find_by(id: session[:user_id])
    end

    def current_persona
      @current_personas = Persona.where(member_id: current_user.id)
    end

  end


end
