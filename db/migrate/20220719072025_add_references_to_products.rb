class AddReferencesToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :recipe_id, :bigint, null: false
    add_reference :recipes, null: false, foreign_key: true
  end
end
