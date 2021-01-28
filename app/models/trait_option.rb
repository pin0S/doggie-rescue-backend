class TraitOption < ApplicationRecord
    has_many :preferences
    has_many :pet_traits
    belongs_to :trait

    accepts_nested_attributes_for :trait
end
