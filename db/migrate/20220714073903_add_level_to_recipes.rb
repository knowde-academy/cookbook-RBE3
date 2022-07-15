class AddLevelToRecipes < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :level, :integer
  end
end
