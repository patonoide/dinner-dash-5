class Meal < ApplicationRecord
    has_one_attached :image
    belongs_to :category
    has_many :order_meals
    validates :name, presence: true
    validates :price, presence: true
    validates :name, uniqueness: true
end
