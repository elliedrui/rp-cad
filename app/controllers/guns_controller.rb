class GunsController < ApplicationController

  # GET: /guns
  get "/guns" do
    erb :"/guns/index.html"
  end

  # GET: /guns/new
  get "/guns/new" do
    erb :"/guns/new.html"
  end

  # POST: /guns
  post "/guns" do
    binding.pry
    @gun = Gun.create(params[:gun])
    @gun.save
    binding.pry
    redirect "/guns"
  end

  # GET: /guns/5
  get "/guns/:id" do
    erb :"/guns/show.html"
  end

  # GET: /guns/5/edit
  get "/guns/:id/edit" do
    erb :"/guns/edit.html"
  end

  # update PATCH/PUT: /guns/5
  post "/guns/:id" do
    gun = Gun.find_by(id: params[:id])
    gun.update(params[:gun])
    redirect "/guns/#{params[:id]}"
  end

  # DELETE: /guns/5/delete
  delete "/guns/:id/delete" do
    binding.pry
    gun = Gun.find_by(id: params[:gun][:id])
    gun.destroy
    redirect "/guns"
  end
end
