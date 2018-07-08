json.extract! meal, :id, :name, :description, :price, :available, :created_at, :updated_at
json.url meal_url(meal, format: :json)
