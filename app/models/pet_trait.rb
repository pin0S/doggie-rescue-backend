class PetTrait < ApplicationRecord
    belongs_to :pet
    belongs_to :trait_option

    # accepts_nested_attributes_for :trait_option
end
