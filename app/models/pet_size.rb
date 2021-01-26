class PetSize < ApplicationRecord
    enum size: {miniature: 0, small: 1, medium: 2, large: 3, very_large: 4}
end
