require 'rails_helper'

RSpec.describe User, type: :model do
    subject {described_class.new(
        email: 'Testuser@test.com',
        password: '123456',
        password_confirmation: '123456'
    )}
    context 'validations' do
        it 'is valid with valid attributes' do
            expect(subject).to be_valid
        end

        it 'is not valid without an email' do
            subject.email = nil
            expect(subject).to_not be_valid
        end

        it 'is not valid when password and pw conf are different' do
            subject.password_confirmation = '12345'
            expect(subject).to_not be_valid
        end

        context 'when email is not unique' do
            before { described_class.create!(email: 'Testuser@test.com', password: 'abcdef',
                password_confirmation: 'abcdef') }
            it {expect(subject).to be_invalid}
        end
    end
end