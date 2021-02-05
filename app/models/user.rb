class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true

    has_many :preferences, dependent: :destroy
    has_many :trait_options, through: :preferences

    has_one :shortlist
end
