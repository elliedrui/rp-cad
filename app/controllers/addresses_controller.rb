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
    redirect "/addresses"
  end

  # GET: /addresses/5
  get "/addresses/:id" do
    erb :"/addresses/show.html"
  end

  # GET: /addresses/5/edit
  get "/addresses/:id/edit" do
    erb :"/addresses/edit.html"
  end

  # PATCH: /addresses/5
  patch "/addresses/:id" do
    redirect "/addresses/:id"
  end

  # DELETE: /addresses/5/delete
  delete "/addresses/:id/delete" do
    redirect "/addresses"
  end
end
