class Complication < ApplicationRecord
    belongs_to :medication
    belongs_to :user
    validates  :complication_severity, :complication_duration, :complication_description, :completely_resolved, presence: true
    validates :complication_severity, numericality: {less_than_or_equal_to: 10, greater_than_or_equal_to: 1}

end

 
