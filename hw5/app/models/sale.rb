class Sale < ApplicationRecord
  has_many :customer, dependent: :destroy
  has_many :product, dependent: :destroy
end
