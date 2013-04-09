class ProductsController < ApplicationController
  def index
    @current_user = current_user
    @order = Order.new
    @product_ids = cart.map(&:to_i)
  end
end
