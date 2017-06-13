json.extract! product, :id, :game, :itemName, :price, :tradeValue, :imagePath, :created_at, :updated_at
json.url product_url(product, format: :json)
