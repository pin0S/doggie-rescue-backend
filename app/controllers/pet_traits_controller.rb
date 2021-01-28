class PetTraitsController < ApplicationController
  before_action :set_pet_trait, only: [:show, :update, :destroy]

  # GET /pet_traits
  def index
    @pet_traits = PetTrait.all

    render json: @pet_traits
  end

  # GET /pet_traits/1
  def show
    render json: @pet_trait
  end

  # POST /pet_traits
  def create
    @pet_trait = PetTrait.new(pet_trait_params)

    if @pet_trait.save
      render json: @pet_trait, status: :created, location: @pet_trait
    else
      render json: @pet_trait.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pet_traits/1
  def update
    if @pet_trait.update(pet_trait_params)
      render json: @pet_trait
    else
      render json: @pet_trait.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pet_traits/1
  def destroy
    @pet_trait.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_trait
      @pet_trait = PetTrait.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pet_trait_params
      params.require(:pet_traits).permit(:pet_id,
        trait_options: [ :name, :score, :trait_id ]
      )
    end
end
