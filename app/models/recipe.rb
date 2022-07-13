class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: true
  validates :price, numericality: { only_integer: true }, allow_nil: true
end
