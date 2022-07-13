class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :price
  
    def price
      
        return "unknow" if object.price.blank?
        object.price
        
    end
end
