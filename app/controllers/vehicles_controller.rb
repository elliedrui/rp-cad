class VehiclesController < ApplicationController

  # GET: /vehicles
  get "/vehicles" do
    erb :"/vehicles/index.html"
  end

  # GET: /vehicles/new
  get "/vehicles/new" do
    erb :"/vehicles/new.html"
  end

  # POST: /vehicles
  post "/vehicles" do
    redirect "/vehicles"
  end

  # GET: /vehicles/5
  get "/vehicles/:id" do
    erb :"/vehicles/show.html"
  end

  # GET: /vehicles/5/edit
  get "/vehicles/:id/edit" do
    erb :"/vehicles/edit.html"
  end

  # PATCH: /vehicles/5
  patch "/vehicles/:id" do
    redirect "/vehicles/:id"
  end

  # DELETE: /vehicles/5/delete
  delete "/vehicles/:id/delete" do
    redirect "/vehicles"
  end
end
