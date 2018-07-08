class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  #before_action :require_admin

  def index
    @meals = Meal.all
  end

  
  def show
  end

  
  def new
    @meal = Meal.new
  end

  
  def create
    @meal = Meal.new(meal_params)
        if @meal.save
            redirect_to meals_path
        else
            render :new
        end
  end


  def edit
  end

  
  def update
    if @meal.update(meal_params)
      redirect_to meals_path
    else
      render :edit
    end
  end

  
  def destroy
    @meal.destroy
    respond_to do |format|
      format.html { redirect_to meals_url, notice: 'Meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = Meal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meal_params
      params.require(:meal).permit(:name, :description, :price, :available)
    end
end
