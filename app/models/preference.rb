class Preference < ApplicationRecord
    belongs_to :user
    belongs_to :trait_option

    accepts_nested_attributes_for :trait_option
end
