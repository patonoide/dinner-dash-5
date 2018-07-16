json.extract! order_meal, :id, :quantity, :order_id, :meal_id, :created_at, :updated_at
json.url order_meal_url(order_meal, format: :json)
