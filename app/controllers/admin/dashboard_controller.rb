class Admin::DashboardController < Admin::ApplicationController
  def show
    @products = Product.count
    @categories = Category.count
  end

end
