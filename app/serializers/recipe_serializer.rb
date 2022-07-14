class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :cooking_time, :price
  
    def cooking_time
      return "unknown" if object.cooking_time.blank?
      
      object.cooking_time
    end
      
    def price
        return "unknow" if object.price.blank?
        
        object.price
    end
end
