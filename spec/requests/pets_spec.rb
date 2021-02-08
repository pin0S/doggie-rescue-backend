require 'rails_helper'

RSpec.describe "Pets", type: :request do
  describe "GET pets#index" do
    before(:example) do
      @first_pet = FactoryBot.create(:pet)
      @second_pet = FactoryBot.create(:pet)
      @third_pet = FactoryBot.create(:pet)
      get pets_path
      @json_response = JSON.parse(response.body)
    end

    it "returns status 200" do
      expect(response).to have_http_status(200)
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "contains correct number of entries" do
      expect(@json_response['pets'].count).to eq(3)
    end

    it "contains the correct attributes" do
      expect(@json_response['pets'].first).to include({
        id => @first_pet.id,
        name => @first_pet.name,
        breed => @first_pet.breed,
        description => @first_pet.description,
      })
    end

  end
end
