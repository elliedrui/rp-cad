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
    @member = Member.create(params[:member])
    @member.save
    redirect "/members"
  end

  # GET: /members/5
  get "/members/:id" do
    id = params[:id]
    # add error handling for when there is no member
    @member = Member.find_by(id: id)
    erb :"/members/show.html"
  end

  get "/members/:id/show" do
    erb :"/members/show.html"
  end

  # GET: /members/5/edit
  get "/members/:id/edit" do
    @member = Member.find_by_id(params[:member][:id])
    erb :"/members/edit.html"
  end

  # update PATCH/PUT: /members/5
  post "/members/:id" do
    member = Member.find_by(id: params[:id])
    member.update(params[:member])
    redirect "/members/#{member.id}"
  end

  # DELETE: /members/5/delete
  delete "/members/:id/delete" do
    member = Member.find_by(id: params[:member][:id])
    member.destroy
    redirect "/members"
  end

end
