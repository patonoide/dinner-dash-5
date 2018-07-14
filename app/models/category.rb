class Category < ApplicationRecord
    has_many :meals
    validates :name, presence: true
    validates :name, uniqueness: true
end
