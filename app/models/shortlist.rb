class Shortlist < ApplicationRecord
    belongs_to :user, dependent: :destroy

end
