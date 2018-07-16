require "application_system_test_case"

class OrderMealsTest < ApplicationSystemTestCase
  setup do
    @order_meal = order_meals(:one)
  end

  test "visiting the index" do
    visit order_meals_url
    assert_selector "h1", text: "Order Meals"
  end

  test "creating a Order meal" do
    visit order_meals_url
    click_on "New Order Meal"

    fill_in "Meal", with: @order_meal.meal_id
    fill_in "Order", with: @order_meal.order_id
    fill_in "Quantity", with: @order_meal.quantity
    click_on "Create Order meal"

    assert_text "Order meal was successfully created"
    click_on "Back"
  end

  test "updating a Order meal" do
    visit order_meals_url
    click_on "Edit", match: :first

    fill_in "Meal", with: @order_meal.meal_id
    fill_in "Order", with: @order_meal.order_id
    fill_in "Quantity", with: @order_meal.quantity
    click_on "Update Order meal"

    assert_text "Order meal was successfully updated"
    click_on "Back"
  end

  test "destroying a Order meal" do
    visit order_meals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order meal was successfully destroyed"
  end
end
