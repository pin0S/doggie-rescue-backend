class TypePet < ApplicationRecord
    enum type: {dog: 0, cat: 1}
end
