class User < ApplicationRecord
    has_many :complications
    has_many :medications, through: :complications
    validates :first_name, presence: true
    validates :email, presence: true, uniqueness: true
    has_secure_password
end
