class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { only_integer: true }, allow_nil: true
  validates :cooking_time, numericality: { only_integer: true, greater_than:0 }, allow_nil:true
  validates :level, numericality: {only_integer: true, greater_than_or_equal_to:1, less_than_or_equal_to:5}, allow_nil: true
end
