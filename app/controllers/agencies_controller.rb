class AgenciesController < ApplicationController

  # GET: /agencies
  get "/agencies" do
    erb :"/agencies/index.html"
  end

  # GET: /agencies/new
  get "/agencies/new" do
    erb :"/agencies/new.html"
  end

  # POST: /agencies
  post "/agencies" do
    redirect "/agencies"
  end

  # GET: /agencies/5
  get "/agencies/:id" do
    erb :"/agencies/show.html"
  end

  # GET: /agencies/5/edit
  get "/agencies/:id/edit" do
    erb :"/agencies/edit.html"
  end

  # PATCH: /agencies/5
  patch "/agencies/:id" do
    redirect "/agencies/:id"
  end

  # DELETE: /agencies/5/delete
  delete "/agencies/:id/delete" do
    redirect "/agencies"
  end
end
