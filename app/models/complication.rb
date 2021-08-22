class Complication < ApplicationRecord
    belongs_to :medication
    belongs_to :user 
    validates  :complication_severity, :complication_duration, :complication_description, presence: true
    validates :complication_severity, numericality: {message: 'must be 1-10',less_than_or_equal_to: 10, greater_than_or_equal_to: 1}
    validates :completely_resolved, inclusion: {message: 'must indicate if completely resolved', in: [true, false]}
end

 
