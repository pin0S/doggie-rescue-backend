class Pet < ApplicationRecord
    has_one :adoption
    has_one :pet_trait, dependent: :destroy

    accepts_nested_attributes_for :pet_trait
end
