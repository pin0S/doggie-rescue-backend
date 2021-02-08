require 'rails_helper'

RSpec.describe Pet, type: :model do
    subject {described_class.new(
        name: 'Axel',
        breed: 'Staffy X',
        description: 'A really good dog'
    )}
    context 'validations' do
        it 'is valid with valid attributes' do
            expect(subject).to be_valid
        end

        it 'is not valid without an name' do
            subject.name = nil
            expect(subject).to_not be_valid
        end

        it 'is not valid without an breed' do
            subject.breed = nil
            expect(subject).to_not be_valid
        end

        it 'is not valid without an description' do
            subject.description = nil
            expect(subject).to_not be_valid
        end
    end
end