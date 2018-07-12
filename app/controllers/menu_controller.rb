class MenuController < ApplicationController
  def index
    @meals = Meal.all
  end
end
