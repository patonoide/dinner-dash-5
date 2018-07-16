class MenuController < ApplicationController
    attr_accessor :ordermeal

    def index

        @meals = Meal.all

        @order = set_current_order
        if user_signed_in?
            #@order.user_id = current_user.id
        end
    end


end
