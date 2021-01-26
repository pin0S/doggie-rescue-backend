class Preference < ApplicationRecord
    belongs_to :user
    has_one :activity_level, :age_pet, :coat_type, :employment, :experience, :family_type, :household, :other_pet, :pet_size, :type_pet
end
