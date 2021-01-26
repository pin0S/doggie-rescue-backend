class FamilyType < ApplicationRecord
    enum family: {solo: 0, small_family: 1, big_family: 2}
end
