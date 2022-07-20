class Rate < ApplicationRecord
  belongs_to :recipe
  belongs_to :user
  validates :rating, numericality: { only_integer: true, greater_than: 0, less_than: 6 }, allow_nil: true
  validates :user_id, uniqueness: { scope: :recipe, message: "You already gave rate" }
end
