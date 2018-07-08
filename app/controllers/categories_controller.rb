class CategoriesController < ApplicationController

    def category_params
        params.require(:category).permit(:name)
    end

    def index
        @categories = Category.all

    end

    def edit
        @category = Category.find(params[:id])
    end

    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to categories_path
        end
    end

    def new
        @category = Category.new

    end

    def destroy
        @category = Category.find(params[:id])
        if @category.delete
            redirect_to categories_path
        end
    end

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to categories_path
        end
    end

end
