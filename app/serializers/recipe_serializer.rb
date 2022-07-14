class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :price, :video_link
  
  def price
    return "unknow" if object.price.blank?
    
    object.price
  end
  
  def video_link
    return "unknow" if object.video_link.blank?
    
    object.video_link
  end
end
