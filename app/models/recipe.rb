class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { only_integer: true }, allow_nil: true
  validates :cooking_time, numericality: { only_integer: true, greater_than:0 }, allow_nil:true
end
