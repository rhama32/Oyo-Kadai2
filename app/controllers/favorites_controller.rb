class FavoritesController < ApplicationController
 def create
  profile_image = ProfileImage.find(params[profile_image_id])
  favorite = current_user.favorites.new(profile_image_id: post_image.id)
  favorite.save
  redirect_to book_path(profile_image)
 end

 def destroy
  post_image = ProfileImage.find(params[:profile_image_id])
  favorite = current_user.favorites.find_by(profile_image_id: profile_image.id)
  favorite.destroy
  redirect_to book_path(profile_image)
 end
end
