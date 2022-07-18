class VideoLinkPatch < ActiveRecord::Migration[6.1]
  def change
    change_column :recipes, :video_link, :string
  end
end
