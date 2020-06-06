class SessionController < ApplicationController

  get '/signup' do
    erb :'sessions/signup'
  end
  
  get '/login' do
    erb :'login'
  end

  post '/signup' do

    member = Member.create(params[:member])
    #binding.pry
    member.save
    session[:user_id] = member.id
    redirect to '/'
  end

  post '/login' do
    member = Member.find_by(username: params[:member][:username])
    if member.authenticate(params[:member][:password])
      session[:user_id] = member.id
      redirect to '/'
    else
      @error = "Invalid Member name or password!"
      erb :'sessions/login'
    end
  end
  
  get '/logout' do
    session[:user_id] = nil
    redirect to '/'
  end

  
end
