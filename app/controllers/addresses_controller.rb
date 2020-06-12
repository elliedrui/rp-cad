class AddressesController < ApplicationController

  # GET: /addresses
  get "/addresses" do
    erb :"/addresses/index.html"
  end

  # GET: /addresses/new
  get "/addresses/new" do
    erb :"/addresses/new.html"
  end

  # POST: /addresses
  post "/addresses" do
    binding.pry
    @address = Address.new
    @address.address = params[:address][:address]
    @address.description = params[:address][:description]
    @address.has_interior = params[:address][:has_interior]
    @address.persona_id = params[:persona_id]
    @address.save
    binding.pry
    redirect "/addresses"
  end

  # GET: /addresses/5
  get "/addresses/:id" do
    erb :"/addresses/show.html"
  end

  # GET: /addresses/5/edit
  get "/addresses/:id/edit" do
    @address = Address.find_by_id(params[:id])
    erb :"/addresses/edit.html"
  end

  # PATCH: /addresses/5
  patch "/addresses/:id" do
    @address = Address.find_by_id(params[:id])
    @address.update(params[:address])
    @address.save
    redirect "/addresses"
  end

  # DELETE: /addresses/5/delete
  delete "/addresses/:id" do
    @address = Address.find_by_id(params[:id])
    @address.delete
    redirect "/addresses"
  end
end
