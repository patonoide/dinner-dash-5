class CategoryController < ApplicationController
    before_action :require_admin


    def index
        @categories = Category.all

    end

    def update
        @category = Category.find(params[:id])
    end

    def new
        @category = Category.new
    end

end
