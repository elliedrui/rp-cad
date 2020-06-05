class GovsController < ApplicationController

  # GET: /govs
  get "/govs" do
    erb :"/govs/index.html"
  end

  # GET: /govs/new
  get "/govs/new" do
    erb :"/govs/new.html"
  end

  # POST: /govs
  post "/govs" do
    redirect "/govs"
  end

  # GET: /govs/5
  get "/govs/:id" do
    erb :"/govs/show.html"
  end

  # GET: /govs/5/edit
  get "/govs/:id/edit" do
    erb :"/govs/edit.html"
  end

  # PATCH: /govs/5
  patch "/govs/:id" do
    redirect "/govs/:id"
  end

  # DELETE: /govs/5/delete
  delete "/govs/:id/delete" do
    redirect "/govs"
  end
end
