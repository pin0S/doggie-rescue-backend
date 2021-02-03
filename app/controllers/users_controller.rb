class UsersController < ApplicationController
  # before_action :authenticate_user
  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
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
        auth_token = Knock::AuthToken.new payload: {sub: @user.id}
        render json: {email: @user.email, jwt: auth_token.token}, status: 200
        puts 'sign in success'
    else
        render json: {error: "Incorrect Username or Password"}, status: 404 
        puts 'sign in unsucessful'
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
    @user = User.find(1)
    @user_trait_prefs = @user.trait_options.map {|trait| trait.score}
    @pets = Pet.all

    @matches = []

    for pet in @pets.all do
      score = 0
      i = 0
      for trait in pet.trait_options
        if trait.score == @user_trait_prefs[i]
          score += 1
        end
        i += 1
      end
      @matches.push({pet_id: pet.id, name: pet.name, 
        gender: pet.trait_options[10].name, score: score})
    end

    render json: @matches

  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:email, :password, :password_confirmation, :user)
    end
end

