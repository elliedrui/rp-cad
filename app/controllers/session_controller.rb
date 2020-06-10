class SessionController < ApplicationController

  get '/signup' do
    erb :'sessions/signup'
  end
  
  get '/login' do
    erb :'sessions/login'
  end

  post '/signup' do

    @member = Member.new(:name => params[:member][:name], :admin_level_id => 0, :password => params[:member][:password])
    @member.save
    session[:user_id] = @member.id
    binding.pry
    redirect to :"/members/show.html"
  end

  post '/login' do
    @member = Member.find_by(name: params[:member][:name])
    if @member == nil || !!@member.authenticate(params[:member][:password]) == false
      @error = "Invalid Member name or password!"
      erb :'sessions/login'
    elsif @member.authenticate(params[:member][:password])
      session[:user_id] = @member.id
      redirect to :"/members/show.html"
    end
  end
  
  get '/logout' do
    session.clear
    redirect to '/'
  end

  
end
