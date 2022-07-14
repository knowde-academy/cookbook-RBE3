class Comment < ApplicationRecord
  belongs_to :recipes
  
  validates :body, length: { minimum: 10 }
  @recipe.order(created_at: :desc)
end