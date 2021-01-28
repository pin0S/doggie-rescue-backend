class Pet < ApplicationRecord
    has_one :adoption
    has_one :pet_traits
end
