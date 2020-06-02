class MembersController < ApplicationController

  # GET: /members
  get "/members" do
    @members = Member.all
    erb :"/members/index.html"
  end

  # GET: /members/new
  get "/members/new" do
    erb :"/members/new.html"
  end

  # POST: /members
  post "/members" do
    redirect "/members"
  end

  # GET: /members/5
  get "/members/:id" do
    id = params[:id]
    @member = Member.find_by(id: id)
    erb :"/members/show.html"
  end

  # GET: /members/5/edit
  get "/members/:id/edit" do
    erb :"/members/edit.html"
  end

  # PATCH: /members/5
  patch "/members/:id" do
    redirect "/members/:id"
  end

  # DELETE: /members/5/delete
  delete "/members/:id/delete" do
    redirect "/members"
  end
end
