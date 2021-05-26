class FavoritesController < ApplicationController
   before_action :set_post
  before_action :authenticate_user!
  
  def create
    if @reflection.user_id != current_user.id   
      @favorite = Favorite.create(user_id: current_user.id, reflection_id: @reflection.id)
    end
  end
 
  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, reflection_id: @reflection.id)
    @favorite.destroy
  end

  private
  def set_post
    @reflection = Reflection.find(params[:reflection_id])
  end
  
end
