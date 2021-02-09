# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

PetTrait.destroy_all
TraitOption.destroy_all
Trait.destroy_all
Pet.destroy_all

score = 1
traits = [
  ['household', ['no backyard', 'with backyard', 'balcony']],
  ['lifestyle', ['single', 'couple', 'family young kids', 'family older kids', 'older']],
  ['other_pets', ['yes','no']],
  ['employment_status', ['pt','ft', 'home based worker','retired',]],
  ['pet_activity_level', ['low', 'medium', 'high']],
  ['species', ['dog', 'cat']],
  ['pet_size', ['small','medium','large']],
  ['coat_type', ['shedding','low shedding','no shed']],
  ['experience', ['none','some','lots']],
  ['age', ['baby','1-3','4-6','7-9','old']],
  ['gender', ['male', 'female']]  
].each_with_index do |attrs, index|
  # each_with_index is zero based
  trait = Trait.create! name: attrs.first

  options = attrs.last.each do |el|
    trait.trait_options.create!(name: el, score: score)
    score *= 2
  end
end

p "Created #{Trait.count} traits. & #{TraitOption.count}"

User.create!([username: Faker::Name.first_name,
              email: 'admin@test.com',
              password: "123456",
              is_admin: true
])

trait_ops_ids = Trait.all.map {|trait| trait.trait_option_ids.sample}
User.create!([username: Faker::Name.first_name,
              email: 'user@test.com',
              password: "123456",
              is_admin: false,
              trait_option_ids: trait_ops_ids
])

