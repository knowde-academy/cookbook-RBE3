class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: false
  validates :price, numericality: true
  validates :price, numericality: { only_integer: true }
end
