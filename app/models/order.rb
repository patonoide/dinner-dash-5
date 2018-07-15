class Order < ApplicationRecord
  belongs_to :user
  belongs_to :situation
  has_many :order_meals

  def init
    self.status = 1
  end
end
