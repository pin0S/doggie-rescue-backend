class Household < ApplicationRecord
    enum household: {no_backyard: 0, balcony_only: 1, small_backyard: 2, big_backyard: 3}
end
