class Pet < ApplicationRecord
    has_one :adoption
    has_one :activity_level, :age_pet, :coat_type, :experience, :family_type, :other_pet, :pet_size, :type_pet
    
    has_and_belongs_to_many :shortlists
    belongs_to :user, through: :adoption, optional: true
end
