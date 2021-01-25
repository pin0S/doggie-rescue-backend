class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
    validates :email, presence: true,uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    has_one :shortlist, :preference
    has_many :adoptions, optional: :true
    has_many :pets, through: :adoptions
end
