require 'faker'

FactoryBot.define do
    factory :user do
        sequence :email do |n|
            "#{n}#{Faker::Internet.email}"
        end
        sequence :password do |n|
            "123456"
        end
        sequence :password_confirmation do |n|
            "123456"
        end
    end
end

