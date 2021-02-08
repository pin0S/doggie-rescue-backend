require 'faker'

FactoryBot.define do
    factory :pet do
        sequence :name do |n|
            Faker::Creature::Dog.name
        end
        sequence :breed do |n|
            Faker::Creature::Dog.breed
        end
        sequence :description do |n|
            Faker::Creature::Dog.meme_phrase
        end
    end
end