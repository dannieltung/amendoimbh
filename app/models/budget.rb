class Budget < ApplicationRecord
  validates :quantity, numericality: { greater_than_or_equal_to: 1 }, presence: true
end
