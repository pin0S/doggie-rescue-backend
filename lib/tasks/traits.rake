namespace :traits do
  desc "seeds traits"
  task seed_trait_names: :environment do
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
  end

end
