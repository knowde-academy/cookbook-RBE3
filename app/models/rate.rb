class Rate < ApplicationRecord
  belongs_to :recipe
  validates :rating, numericality: { only_integer: true, in: 1..5 }, allow_nil: true
end
