class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    validates :email, presence: true,uniqueness: true
    # has_one :shortlist, :preference
    # has_many :adoptions, optional: :true
    # has_many :pets, through: :adoptions
end
