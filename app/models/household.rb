class Household < ApplicationRecord
    enum status: [:no_backyard, :balcony_only, :small_backyard, :big_backyard]
end
