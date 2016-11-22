class PetsController < ApplicationController
  def new

  end

  def create
    @pet = Pet.new(name: params[:name], pet_type: params[:pet_type], age: params[:age], description: params[:description])
    @pet.save
  end

  def destroy
    @pet = Pet.find_by(id: params[:id])
    @pet.destroy
    redirect_to "/"
  end

  def edit
    @pet = Pet.find_by(id: params[:id])
  end

  def update
    @pet = Pet.find_by(id: params[:id])
    @pet = Pet.assign_attributes(name: params[:name], pet_type: params[:pet_type], age: params[:age], description: params[:description])
    @pet.save
    redirect_to "/pets/#{@pet.id}"
  end

  def show
    @pet = Pet.find_by(id: params[:id])
  end

  def index
    @pets = Pet.all
  end
end