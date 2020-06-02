class AdminLevelsController < ApplicationController

  # GET: /admin_levels
  get "/admin_levels" do
    erb :"/admin_levels/index.html"
  end

  # GET: /admin_levels/new
  get "/admin_levels/new" do
    erb :"/admin_levels/new.html"
  end

  # POST: /admin_levels
  post "/admin_levels" do
    redirect "/admin_levels"
  end

  # GET: /admin_levels/5
  get "/admin_levels/:id" do
    erb :"/admin_levels/show.html"
  end

  # GET: /admin_levels/5/edit
  get "/admin_levels/:id/edit" do
    erb :"/admin_levels/edit.html"
  end

  # PATCH: /admin_levels/5
  patch "/admin_levels/:id" do
    redirect "/admin_levels/:id"
  end

  # DELETE: /admin_levels/5/delete
  delete "/admin_levels/:id/delete" do
    redirect "/admin_levels"
  end
end
