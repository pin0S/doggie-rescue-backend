class TraitOption < ApplicationRecord
    has_many :preferences
    has_many :pet_trait
end
