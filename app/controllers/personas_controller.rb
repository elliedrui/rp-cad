class PersonasController < ApplicationController

  # GET: /personas
  get "/personas" do
    @personas = Persona.where(member_id = current_user.id)
    erb :"/personas/index.html"
  end

  # GET: /personas/new
  get "/personas/new" do
    erb :"/personas/new.html"
  end

  # POST: /personas
  post "/personas" do
    @persona = Persona.create(params[:persona])
    @persona.save
    redirect "/personas"
  end

  # GET: /personas/5
  get "/personas/:id" do
    binding.pry
    @persona = Persona.find_by(id: params[:id])
    erb :"/personas/show.html"
  end

  # GET: /personas/5/edit
  get "/personas/:id/edit" do
    @persona = Persona.find_by(id: params[:id])
    erb :"/personas/edit.html"
  end

  # PATCH: /personas/5
  patch "/personas/:id" do
    @persona = Persona.find_by_id(params[:id])
    @persona.update(params[:persona])
    @persona.save
    redirect "/personas/#{@persona.id}"
  end

  # DELETE: /personas/5/delete
  delete "/personas/:id" do
    @persona = Persona.find_by_id(params[:id])
    @persona.delete
    redirect "/personas"
  end
end
