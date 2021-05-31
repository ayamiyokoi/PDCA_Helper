class FavoritesController < ApplicationController
  before_action :set_post, except: [:index]
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

  def show
  end

  def index
      @user = User.find(current_user.id)
      @reflections = @user.reflections
      favorites = Favorite.where(user_id: current_user.id).pluck(:reflection_id)
      @favorite_list = Reflection.find(favorites)
  end

  private
  def set_post
    @reflection = Reflection.find(params[:reflection_id])
  end

end
