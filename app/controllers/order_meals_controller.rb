class OrderMealsController < ApplicationController
  before_action :set_order_meal, only: [:show, :edit, :update, :destroy]

  # GET /order_meals
  # GET /order_meals.json
  def index
    @order_meals = OrderMeal.all
  end

  # GET /order_meals/1
  # GET /order_meals/1.json
  def show
  end

  # GET /order_meals/new
  def new
    @order_meal = OrderMeal.new
  end

  # GET /order_meals/1/edit
  def edit
  end

  # POST /order_meals
  # POST /order_meals.json
  def create
    @order_meal = OrderMeal.new(order_meal_params)

    respond_to do |format|
      if @order_meal.save
        format.html { redirect_to @order_meal, notice: 'Order meal was successfully created.' }
        format.json { render :show, status: :created, location: @order_meal }
      else
        format.html { render :new }
        format.json { render json: @order_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_meals/1
  # PATCH/PUT /order_meals/1.json
  def update
    respond_to do |format|
      if @order_meal.update(order_meal_params)
        format.html { redirect_to @order_meal, notice: 'Order meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_meal }
      else
        format.html { render :edit }
        format.json { render json: @order_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_meals/1
  # DELETE /order_meals/1.json
  def destroy
    @order_meal.destroy
    respond_to do |format|
      format.html { redirect_to order_meals_url, notice: 'Order meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_meal
      @order_meal = OrderMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_meal_params
      params.require(:order_meal).permit(:quantity, :order_id, :meal_id)
    end
end
