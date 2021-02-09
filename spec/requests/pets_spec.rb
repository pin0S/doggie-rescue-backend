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
      expect(@json_response.count).to eq(3)
    end

    it "contains the correct attributes" do
      expect(@json_response.first).to include({
        'id' => @first_pet.id,
        'name' => @first_pet.name,
        'breed' => @first_pet.breed,
        'description' => @first_pet.description,
      })
    end
  end

  describe 'POST pets#create' do
    context 'when the pet is valid' do
      before(:example) do
        @pet_params = FactoryBot.attributes_for(:pet)
        post pets_path, params: { pet: @pet_params }
      end
  
      it 'returns http created' do
        expect(response).to have_http_status(:created)
      end
  
      it 'saves the pet to the database' do
        expect(Pet.last.name).to eq(@pet_params[:name])
      end
    end

    context 'when pet is invalid' do
      before(:example) do
        @pet_params = FactoryBot.attributes_for(:pet, :invalid)
        post pets_path, params: { pet: @pet_params }
        @json_response = JSON.parse(response.body)
      end

      it 'returned http unprocessable entity' do
        expect(response).to have_http_status(:unprocessable_entity)
      end

      

    end
  end
end