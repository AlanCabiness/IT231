json.extract! customer, :id, :name, :city, :state, :phone, :email, :created_at, :updated_at
json.url customer_url(customer, format: :json)
