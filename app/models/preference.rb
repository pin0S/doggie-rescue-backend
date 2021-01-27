class Preference < ApplicationRecord
    belongs_to :user
    has_one :trait_option
end
