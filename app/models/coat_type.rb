class CoatType < ApplicationRecord
    enum coat_type: {no_hair: 0, short: 1, long: 2, hypoallergenic: 3}
end
