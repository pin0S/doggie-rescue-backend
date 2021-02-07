class Pet < ApplicationRecord
  has_one :adoption
  has_many :pet_traits, dependent: :destroy

  # Need the following relationship since when we add a trait_option
  # to a pet, we need to know the trait_option's `id`
  has_many :trait_options, through: :pet_traits

  has_many :shortlist

end
