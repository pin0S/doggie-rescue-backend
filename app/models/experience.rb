class Experience < ApplicationRecord
    enum experience: {first_time_owner: 0, experienced: 1}
end
