class TopicsController < ApplicationController
  def index
    @reflections = Reflection.all

  end

  def show
     @reflection = Reflection.find(params[:id])
  end
end
