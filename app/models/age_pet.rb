class AgePet < ApplicationRecord
    enum age: {baby: 0, young: 1, middle_age: 2, old: 3}
end
