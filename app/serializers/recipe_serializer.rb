class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :price
  
    def price
      
        object.price = "unknown" if object.price.blank?
        return object.price
        
    end
end
