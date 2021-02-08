json.id @pet.id
json.extract! @pet, :name, :breed
json.traits Hash[@pet.trait_options.map{ |trait| [trait.trait.name, trait.name]}]