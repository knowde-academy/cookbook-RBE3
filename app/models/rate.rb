class Rate < ApplicationRecord
  belongs_to :recipe
  validates :rating, numericality: { only_integer: true, greater_than: 0, less_than: 6 }, allow_nil: true
end
