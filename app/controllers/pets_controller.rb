class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :update, :destroy]

  # GET /pets
  def index
    @pets = Pet.all

    render json: @pets.to_json(
        :include => {
          :trait_options => {only: [:name]}
        })
  end


  # GET /pets/1
  def show
    render json: @pet.to_json(include: [:trait_options])
  end

  # POST /pets
  def create
    if @pet = Pet.create!([pet_params])
      render json: @pet, status: :created
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pets/1
  def update
    @pet.update(pet_params)
    if @pet.errors.any? 
      render json: @pet.errors, status: :unprocessable_entity
    else
      render json: @pet, status: 201
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy
    render json: 204
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pet
    begin
    @pet = Pet.find(params[:id])
    rescue
      render json: {error: "Pet not found"}, status: 404
    end
  end

  # Only allow a trusted parameter "white list" through.
  def pet_params
    # params.permit(:name, :breed, :description)
    params.require(:pet).permit(:name, :breed, :description, :featured_image, trait_option_ids: [])
  end
end
