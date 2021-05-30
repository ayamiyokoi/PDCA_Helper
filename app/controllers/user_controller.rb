class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reflections = @user.reflections

    favorites = Favorite.where(user_id: current_user.id).pluck(:reflection_id)  
    @favorite_list = Reflection.find(favorites)
    
  end
end
