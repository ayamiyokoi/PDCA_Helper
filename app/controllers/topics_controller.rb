class TopicsController < ApplicationController
  def index
    @reflections = Reflection.all
  end
end
