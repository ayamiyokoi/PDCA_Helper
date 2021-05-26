class TopicsController < ApplicationController
  def index
    @reflections = Reflection.all
    @reflection = Reflection.find(params[:reflection_id])
  end
end
