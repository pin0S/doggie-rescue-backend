class Employment < ApplicationRecord
    enum employment: {not_working: 0, part_time: 1, full_time: 2}
end
