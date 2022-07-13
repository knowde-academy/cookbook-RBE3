class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :cooking_time
  
  def cooking_time
      
      object.cooking_time="unknown" if object.cooking_time.blank?
      return object.cooking_time
  
  end
     
 
end
