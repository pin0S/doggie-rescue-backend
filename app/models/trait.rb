class Trait < ApplicationRecord
    has_many :trait_options, dependent: :destroy
end
