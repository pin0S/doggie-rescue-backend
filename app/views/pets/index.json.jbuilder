# Use the _pet.json.jbuilder to create a custom object
json.array! @pets, partial: "pets/pet", as: :pet