class Preference < ApplicationRecord
    belongs_to :user
    belongs_to :trait_option
end
