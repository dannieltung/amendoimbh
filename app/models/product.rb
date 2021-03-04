class Product < ApplicationRecord
  # has_many_atached: photos
  belongs_to :user
  validates :name, :price, :stock_quantity, presence: true
end
