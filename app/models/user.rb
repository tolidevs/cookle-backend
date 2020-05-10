class User < ApplicationRecord
    has_many :user_preferences
    has_many :preferences, through: :user_preferences
    has_many :saved_recipes

    has_secure_password

    validates :email, :password, presence: true
    validates :email, uniqueness: true
end
