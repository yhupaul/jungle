class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["ADMIN_USERNAME_KEY"], password: ENV["ADMIN_PASSWORD_KEY"]
  
  def show
    @total_products = Product.count
    @total_categories = Category.count
  end
end