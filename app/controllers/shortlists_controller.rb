class ShortlistsController < ApplicationController
  # before_action :set_shortlist, only: [:show, :update, :destroy]
  # before_action :authenticate_user! 

  # GET /shortlists
  def index
    @shortlists = current_user.shortlist
    @shortlist_pets = @shortlists.map {|list| {name: Pet.find(list.pet_id).name, id: Pet.find(list.pet_id).id}}

    render json: @shortlist_pets
  end

  # GET /shortlists/1
  def show
    render json: @shortlist
  end

  # POST /shortlists
  def create
    @shortlist = Shortlist.create(shortlist_params)

    if @shortlist.save
      render json: @shortlist, status: :created
    else
      render json: @shortlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shortlists/1
  def update
    if @shortlist.update(shortlist_params)
      render json: @shortlist
    else
      render json: @shortlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shortlists/1
  def destroy
    @shortlist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shortlist
      @shortlist = Shortlist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shortlist_params
      params.require(:shortlist)
      .permit(:pet_id, :user_id)
      .with_defaults(user_id: current_user.id)
    end
end
