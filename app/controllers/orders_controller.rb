class OrdersController < ApplicationController
  def create
    order = Order.create(:user_id => current_user.id)
    cart.each do |product_id|
      OrderProduct.create(:product_id => product_id, :order_id => order.id)
    end
    clear_cart
    flash[:success] = "Order successful"
    UserMailer.order_confirmation(current_user).deliver
    redirect_to user_products_path(current_user)
  end

  def new
    @products = Product.find_all_by_id(cart)
  end

  def add_to_cart
    if params[:order][:user_id].to_i == current_user.id
      cookies[:cart] = params[:order][:product_ids]
      flash[:success] = 'Items Successfully added!'
      redirect_to new_order_url
    else
      flash[:error] = "Incorrect user"
      sign_out(@current_user)
    end
  end

end
#.gsub!("&", " ").split(" "))