class UsersController < ApplicationController
  # before_action :authenticate_user, only: [:index]
  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  def preference_index
    @preferences = Preference.all

    render json: @preferences
  end

  # GET /users/1
  def show
    render json: @user
    render json: @user.preferences
  end

  # POST /users
  def create
    @user = User.create(user_params)

    if @user.save
      auth_token = Knock::AuthToken.new payload: {sub: @user.id}
      render json: {email: @user.email, jwt: auth_token.token}, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def sign_in 
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
        #auth user
        auth_token = Knock::AuthToken.new payload: {sub: @user.id}
        render json: {email: @user.email, jwt: auth_token.token}, status: 200
        puts 'sign in success'
    else
        render json: {error: "Incorrect Username or Password"}, status: 404 
        puts 'sign in unsucessful'
    end 
  end 

  def preferences
    @user = User.find(current_user.id)
    

    if @user.update(user_params)
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
  
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  # Matches of Pets to user preferences
  def match
    # get the current user and all pets
    @user = User.find(current_user.id)
    @pets = Pet.all

    # setup empty array to pass to frontend after calculations
    @matches = []

    #loop over all pets and compare which trait options match
    #user trait options and save the total to score
    # push that score and that pet to matches to render to front end
    for pet in @pets do
      score = pet.trait_option_ids.intersection(@user.trait_option_ids).length
      @matches.push({
            pet_id: pet.id, 
            score: score
            })
    end

    render json: @matches

  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def set_preference
      @preference = Preference.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:email, :password, :password_confirmation, :user, trait_option_ids: [])
    end

    def preference_params
      params.permit(trait_option_ids: [])
    end
end

