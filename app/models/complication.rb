class Complication < ApplicationRecord
    belongs_to :medication
    belongs_to :user
end
