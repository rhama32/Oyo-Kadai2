class RemoveProfileImageIdFromFavorites < ActiveRecord::Migration[6.1]
  def change
    remove_column :favorites, :profile_image_id, :integer
  end
end
