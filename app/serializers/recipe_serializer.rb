class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :video_link, :cooking_time, :price, :level
  
  def price
    return "unknow" if object.price.blank?
    
    object.price
  end
  
  def video_link
    return "unknow" if object.video_link.blank?
    
    object.video_link
  end
  
  def cooking_time
    return "unknown" if object.cooking_time.blank?
    
    object.cooking_time
  end
  
  def level
      return "unknow" if object.level.blank?
      
      object.level
  end
end
