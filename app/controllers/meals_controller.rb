class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authenticate_admin
  
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
    image = params[:meal][:image]
        if @meal.save
          if image
            @user.image.attach(image)
          end
            redirect_to meals_path, :notice => "Refeição criada."
        else
            redirect_to meals_path, :alert => "Refeição já existente, não possui nome ou não possui preço."
        end
  end


  def edit
  end

  
  def update
    image = params[:meal][:image]
    if @meal.update(meal_params)
      if image
        @meal.image.attach(image)
      end
      redirect_to meals_path, :notice => "Refeição editada."
    else
      redirect_to meals_path, :alert => "Refeição já existente, não possui nome ou não possui preço."
    end
  end

  
  def destroy
    @meal.destroy
    respond_to do |format|
      format.html { redirect_to meals_url, notice: 'Refeição excluída.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_meal
      @meal = Meal.find(params[:id])
    end

    def meal_params
      params.require(:meal).permit(:name, :description, :price, :available, :image)
    end

    
end
