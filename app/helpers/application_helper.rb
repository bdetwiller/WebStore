module ApplicationHelper
  attr_accessor :current_user

  def current_user
    #return nil unless cookies.include?(:user_id)
    @current_user ||= User.find_by_id(cookies[:user_id])
  end

  def sign_in(user)
    cookies.permanent[:user_id] = user.id
    self.current_user = user
  end

  def sign_out(user)
    cookies.permanent[:user_id] = nil
    self.current_user = nil
  end

  def cart
    cookies[:cart].split("&")
  end

  def clear_cart
    cookies[:cart] = nil
  end
end
