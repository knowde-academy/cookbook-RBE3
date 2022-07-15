class Comment < ApplicationRecord
  belongs_to :recipe
  
  validates :body, length: { minimum: 10 }
 # @comment.order(created_at: :desc)
end