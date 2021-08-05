class Medication < ApplicationRecord
    has_many :complications
    scope :order_by_name_strength, -> {order(:name_strength)}
    validates :name_strength, :frequency, :administration_route, presence: true
end
 