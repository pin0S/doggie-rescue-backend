require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET users#index" do
    before(:example) do
      @first_user = FactoryBot.create(:user)
      @second_user = FactoryBot.create(:user)
      get users_path
      @json_response = JSON.parse(response.body)
    end

    it "returns status 200" do
      expect(response).to have_http_status(200)
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "contains correct number of entries" do
      expect(@json_response.count).to eq(2)
    end

    it "contains the correct attributes" do
      expect(@json_response.first).to include({
        'id' => @first_user.id,
        'email' => @first_user.email,
      })
    end
  end

    describe 'POST users#create' do
        context 'when the user is valid' do
        before(:example) do 
            @user_params = FactoryBot.attributes_for(:user)
            post users_path, params: { user: @user_params}
        end

        it "saves user to database" do
            expect(User.last.email).to eq(@user_params[:email])
        end
    end
  end

    describe 'POST users#create' do
      context 'when the user is invalid' do
      before(:example) do 
          @user_params = FactoryBot.attributes_for(:user, :invalid)
          post users_path, params: { user: @user_params}
      end

      it "returns http not created" do
          expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
