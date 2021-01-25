class Detail < ApplicationRecord
    belongs_to :preference
    belongs_to :pet
    belongs_to :user, through: :preference
end
