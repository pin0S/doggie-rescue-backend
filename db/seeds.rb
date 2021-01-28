# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(username: 'vito', email: 'vito@test.com', password: 'vito1', password_confirmation: 'vito1', phone: '12345678', first_name: 'Vito', last_name: 'Vitios', is_admin: false)
# User.create(username: 'elijah', email: 'elijah@test.com', password: 'elijah1', password_confirmation: 'elijah1', phone: '12345678', first_name: 'Elijah', last_name: 'Elijahten', is_admin: false)
require 'faker'


Trait.destroy_all
Pet.destroy_all

Trait.create!([{
    trait_name: "household"
  },
  {
    trait_name: "lifestyle"
  },
  {
    trait_name: "other pets"
  },

  {
    trait_name: "employment"
  },

  {
    trait_name: "activity level"
  },

  {
    trait_name: "species"
  },

  {
    trait_name: "size"
  },

  {
    trait_name: "coat type"
  },

  {
    trait_name: "experience"
  },

  {
    trait_name: "age"
  },
  
  {
    trait_name: "gender"
  }])

  p "Created #{Trait.count} traits."


 30.times do |index|
    Pet.create!([name: Faker::Creature::Dog.name,
                  breed: Faker::Creature::Dog.breed,
                  description: Faker::Creature::Dog.meme_phrase,
                  score: Faker::Number.unique.number(digits: 9)])
  end

  30.times do |index|
    Pet.create!([name: Faker::Creature::Cat.name,
                  breed: Faker::Creature::Cat.breed,
                  description: Faker::Lorem.sentences(number: 1),
                  score: Faker::Number.unique.number(digits: 9)])
  end

  p "Created #{Pet.count} pets."
  
  p "Names of pets: #{Pet.name[1]}."
