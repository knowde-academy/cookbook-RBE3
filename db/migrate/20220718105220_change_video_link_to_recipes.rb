class ChangeVideoLinkToRecipes < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :video_link, :string, default: nil
  end
end
