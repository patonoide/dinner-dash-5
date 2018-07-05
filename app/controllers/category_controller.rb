class CategoryController < ApplicationController
    before_action :require_admin


  def index
      @categories = Category.all

  end
end
