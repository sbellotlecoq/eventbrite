class User < ApplicationRecord
    has_many :attendances
    has_many :events, through: :attendances
    validates :email, presence: true
    validates :encrypted_password, presence: true
end
