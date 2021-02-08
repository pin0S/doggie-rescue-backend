require 'faker'

FactoryBot.define do
    factory :user do
        sequence :email do |n|
            "testuser#{n}@test.com"
        end
        password {"123456"}
        password_confirmation {'123456'}
    end
end

