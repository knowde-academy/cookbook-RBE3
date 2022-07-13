class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :cooking_time
  
  def cooking_time
      
      return "unknown" if object.cooking_time.blank?
  
  end
     
 
end
