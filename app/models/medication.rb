class Medication < ApplicationRecord
    has_many :complications
    scope :order_by_name_strength, -> {order("lower(name_strength)")}
    validates :name_strength, :frequency, :administration_route, presence: true
    validates :name_strength, uniqueness: true
end
 