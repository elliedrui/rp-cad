class PersonasController < ApplicationController

  # GET: /personas
  get "/personas" do
    erb :"/personas/index.html"
  end

  # GET: /personas/new
  get "/personas/new" do
    erb :"/personas/new.html"
  end

  # POST: /personas
  post "/personas" do
    redirect "/personas"
  end

  # GET: /personas/5
  get "/personas/:id" do
    erb :"/personas/show.html"
  end

  # GET: /personas/5/edit
  get "/personas/:id/edit" do
    erb :"/personas/edit.html"
  end

  # PATCH: /personas/5
  patch "/personas/:id" do
    redirect "/personas/:id"
  end

  # DELETE: /personas/5/delete
  delete "/personas/:id/delete" do
    redirect "/personas"
  end
end
