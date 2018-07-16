json.extract! order, :id, :price, :user_id, :situation_id, :created_at, :updated_at
json.url order_url(order, format: :json)
