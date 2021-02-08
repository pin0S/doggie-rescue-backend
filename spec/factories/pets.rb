require 'faker'

trait_ops_ids = Trait.all.map {|trait| trait.trait_option_ids.sample}

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
        sequence :trait_option_ids do |n|
            trait_ops_ids
        end
    end
end