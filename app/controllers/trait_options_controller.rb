class TraitOptionsController < ApplicationController
  before_action :set_trait_option, only: [:show, :update, :destroy]

  # GET /trait_options
  def index
    @trait_options = TraitOption.all

    render json: @trait_options
  end

  # GET /trait_options/1
  def show
    render json: @trait_option
  end

  # POST /trait_options
  def create
    @trait_option = TraitOption.new(trait_option_params)

    if @trait_option.save
      render json: @trait_option, status: :created, location: @trait_option
    else
      render json: @trait_option.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trait_options/1
  def update
    if @trait_option.update(trait_option_params)
      render json: @trait_option
    else
      render json: @trait_option.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trait_options/1
  def destroy
    @trait_option.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trait_option
      @trait_option = TraitOption.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trait_option_params
      params.fetch(:trait_option, {})
    end
end
