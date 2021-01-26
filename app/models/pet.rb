class Pet < ApplicationRecord
    has_one :adoption
    has_many :details
    has_many :shortlists
    belongs_to :user, through: :adoption, optional: true
end
