require 'test_helper'

class OrderMealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_meal = order_meals(:one)
  end

  test "should get index" do
    get order_meals_url
    assert_response :success
  end

  test "should get new" do
    get new_order_meal_url
    assert_response :success
  end

  test "should create order_meal" do
    assert_difference('OrderMeal.count') do
      post order_meals_url, params: { order_meal: { meal_id: @order_meal.meal_id, order_id: @order_meal.order_id, quantity: @order_meal.quantity } }
    end

    assert_redirected_to order_meal_url(OrderMeal.last)
  end

  test "should show order_meal" do
    get order_meal_url(@order_meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_meal_url(@order_meal)
    assert_response :success
  end

  test "should update order_meal" do
    patch order_meal_url(@order_meal), params: { order_meal: { meal_id: @order_meal.meal_id, order_id: @order_meal.order_id, quantity: @order_meal.quantity } }
    assert_redirected_to order_meal_url(@order_meal)
  end

  test "should destroy order_meal" do
    assert_difference('OrderMeal.count', -1) do
      delete order_meal_url(@order_meal)
    end

    assert_redirected_to order_meals_url
  end
end
