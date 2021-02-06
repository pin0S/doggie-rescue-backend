class Shortlist < ApplicationRecord
    belongs_to :user, dependent: :destroy

    belongs_to :pet
end
