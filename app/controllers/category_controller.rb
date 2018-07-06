class CategoryController < ApplicationController
    before_action :require_admin


    def index
        @categories = Category.all

    end

    def edit
        @category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to categories_path
        end
    end

    def new
        @category = Category.new(category_params)
        if @category.save
            redirect_to categories_path
        end
    end

    def destroy
        @category = Category.find(params[:id])
        if @category.delete
            redirect_to categories_path
        end
    end

end
