class UsersController < ApplicationController

  #REV: try to use the RESTFUL methods first before creating new methods in controllers
  def signin
    if cookies[:user_id].blank?
      @user = User.new
    else
      redirect_to user_products_url(current_user)
    end
  end

  def login
    user = User.find_by_email(params[:user][:email])

    if params[:user][:password] == user.password
      sign_in(user)
      flash[:success] = 'You signed in!'
      redirect_to user_products_url(user)
    else
      flash.now[:error] = 'Login unsuccessful'
      render :signin
    end
  end

  def signout
    sign_out(current_user)
    redirect_to signin_url
  end

  def create
  end


end
