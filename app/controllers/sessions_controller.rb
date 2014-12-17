class SessionsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to sessions_path
    else
      redirect_to login_url, alert: "Invalid name or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: "Logged out"
  end
end