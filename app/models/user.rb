class User < ApplicationRecord
    has_many :complications
    has_many :medications, through: :complications
    has_secure_password
    validates :email, presence: true, uniqueness: true
end
