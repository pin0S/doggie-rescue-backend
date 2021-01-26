class ActivityLevel < ApplicationRecord
    enum activity_level: {low: 0, medium: 1, high: 2}
end
