class FavoritesController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!

  def create
    reflection = Reflection.find(params[:reflection_id])
    favorite = current_user.favorites.new(reflection_id: reflection.id)
    favorite.save
    redirect_to reflection_path(reflection)
  end

  def destroy
    reflection = Reflection.find(params[:reflection_id])
    favorite = current_user.favorites.new(reflection_id: reflection.id)
    favorite.destroy
    redirect_to reflection_path(reflection)
  end

  def index

  end

  private
  def set_post
    @reflection = Reflection.find(params[:reflection_id])
  end

end
