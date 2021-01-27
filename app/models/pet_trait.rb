class PetTrait < ApplicationRecord
    belongs_to :pet
    has_one :trait_option
end
