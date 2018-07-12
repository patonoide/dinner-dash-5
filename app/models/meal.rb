class Meal < ApplicationRecord
    has_one_attached :image
    belongs_to :category
    validates :name, presence: true
    validates :price, presence: true
    validates :name, uniqueness: true
end
