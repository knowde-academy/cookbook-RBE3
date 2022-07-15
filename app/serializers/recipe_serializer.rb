class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :price, :video_link, :cooking_time, :level, :comments, :rates
  def price
    return "unknown" if object.price.blank?
    
    object.price
  end
  def video_link
    return "unknown" if object.video_link.blank?
    
    object.video_link
  end
  def cooking_time
    return "unknown" if object.cooking_time.blank?
    
    object.cooking_time
  end
  def level
      return "unknown" if object.level.blank?
      
      object.level
  end
end
