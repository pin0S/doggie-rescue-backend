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
  ['age', ['puppy','1-3','4-6','7-9','old']],
  ['gender', ['male', 'female']]
].each_with_index do |attrs, index|
  # each_with_index is zero based
  trait = Trait.create! name: attrs.first
  
  options = attrs.last.each do |el|  
    trait.trait_options.create(name: el, score: score)
    score *= 2
  end
end



  p "Created #{Trait.count} traits. & #{TraitOption.count}"







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
  


  