class Admin::CategoriesController < Admin::ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
  end

  def destroy
  end
end
