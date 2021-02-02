class Pet < ApplicationRecord

  
  has_one :adoption
  has_one_attached :image
  has_many :pet_traits, dependent: :destroy

  # Need the following relationship since when we add a trait_option
  # to a pet, we need to know the trait_option's `id`
  has_many :trait_options, through: :pet_traits

  # All we're doing if ASSIGNING an existing trait to a pet, 
  # which will be represented in the database as a new row
  # in the join table `pet_traits`



end
