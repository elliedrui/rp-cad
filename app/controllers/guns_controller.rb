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

  # PATCH: /guns/5
  patch "/guns/:id" do
    redirect "/guns/:id"
  end

  # DELETE: /guns/5/delete
  delete "/guns/:id/delete" do
    redirect "/guns"
  end
end
