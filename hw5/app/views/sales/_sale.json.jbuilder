json.extract! sale, :id, :customer, :product, :saleDate, :salePrice, :created_at, :updated_at
json.url sale_url(sale, format: :json)
