class LeosController < ApplicationController

  # GET: /leos
  get "/leos" do
    erb :"/leos/index.html"
  end

  # GET: /leos/new
  get "/leos/new" do
    erb :"/leos/new.html"
  end

  # POST: /leos
  post "/leos" do
    redirect "/leos"
  end

  # GET: /leos/5
  get "/leos/:id" do
    erb :"/leos/show.html"
  end

  # GET: /leos/5/edit
  get "/leos/:id/edit" do
    erb :"/leos/edit.html"
  end

  # PATCH: /leos/5
  patch "/leos/:id" do
    redirect "/leos/:id"
  end

  # DELETE: /leos/5/delete
  delete "/leos/:id/delete" do
    redirect "/leos"
  end
end
