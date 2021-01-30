class TraitOption < ApplicationRecord
    has_many :preferences
    has_many :pet_traits
    belongs_to :trait
    
    # AC: according to Michaels logic we would also remove the nested attributes here for trait options 
    # accepts_nested_attributes_for :trait
end
