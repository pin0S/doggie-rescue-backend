# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(username: 'vito', email: 'vito@test.com', password: 'vito1', password_confirmation: 'vito1', phone: '12345678', first_name: 'Vito', last_name: 'Vitios', is_admin: false)
# User.create(username: 'elijah', email: 'elijah@test.com', password: 'elijah1', password_confirmation: 'elijah1', phone: '12345678', first_name: 'Elijah', last_name: 'Elijahten', is_admin: false)
<<<<<<< HEAD
require 'faker'


=======
>>>>>>> 70694c06229bdd1028ea1bab11fe1f442f7941bc
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
    trait_name: "pet activity level"
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

<<<<<<< HEAD
=======

traits = [{trait_id: 1, name: 'no backyard'}, 
  {trait_id: 1, name: 'home with garden / backyard'}, 
  {trait_id: 1, name: 'balcony'}, 
  {trait_id: 2, name: 'single'},
  {trait_id: 2, name: 'couple'},
  {trait_id: 2, name: 'family young kids'},
  {trait_id: 2, name: 'family older kids'},
  {trait_id: 2, name: 'older'},
  {trait_id: 3, name: 'yes'},
  {trait_id: 3, name: 'no'},
  {trait_id: 4, name: 'pt'},
  {trait_id: 4, name: 'ft'},
  {trait_id: 4, name: 'home based worker'},
  {trait_id: 4, name: 'retired'},
  {trait_id: 5, name: 'low'},
  {trait_id: 5, name: 'medium'},
  {trait_id: 5, name: 'high'},
  {trait_id: 6, name: 'dog'},
  {trait_id: 6, name: 'cat'},
  {trait_id: 7, name: 'small'},
  {trait_id: 7, name: 'medium'},
  {trait_id: 7, name: 'large'},
  {trait_id: 8, name: 'shedding'},
  {trait_id: 8, name: 'low shedding'},
  {trait_id: 8, name: 'no shed'},
  {trait_id: 9, name: 'none'},
  {trait_id: 9, name: 'some'},
  {trait_id: 9, name: 'lots'},
  {trait_id: 10, name: 'puppy'},
  {trait_id: 10, name: '1-3'},
  {trait_id: 10, name: '4-6'},
  {trait_id: 10, name: '7-9'},
  {trait_id: 10, name: 'old'},
  {trait_id: 11, name: 'male'},
  {trait_id: 11, name: 'female'}
]

score = 2

traits.each do |el| 
  
  trait_op = TraitOption.create(trait_id: "#{el[:trait_id]}", name: "#{el[:name]}", score: "#{score}")
  score *= 2
  puts "create #{trait_op}"

end

 Pet.create!([
     {
        name: "Max",
        breed: "Golden Retriever",
        description: "Lovable Big Dog, big head",
        score:  303846084
     },
>>>>>>> 70694c06229bdd1028ea1bab11fe1f442f7941bc

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

<<<<<<< HEAD
  p "Created #{Pet.count} pets."
  
  p "Names of pets: #{Pet.name[1]}."
=======
 p "Created #{Pet.count} pets."

>>>>>>> 70694c06229bdd1028ea1bab11fe1f442f7941bc
