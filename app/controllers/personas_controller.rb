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
    persona = Persona.create(params[:persona])
    redirect "/personas/#{persona.id}"
  end

  # GET: /personas/5
  get "/personas/:id" do
    id = params[:id]
    @persona = Persona.find_by(id: id)
    erb :"/personas/show.html"
  end

  # GET: /personas/5/edit
  get "/personas/:id/edit" do
    @persona = Persona.find_by(id: params[:id])
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
