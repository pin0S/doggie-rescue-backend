class Pet < ApplicationRecord
    has_one :adoption
    has_one :pet_traits

    accepts_nested_attributes_for :pet_traits
end
