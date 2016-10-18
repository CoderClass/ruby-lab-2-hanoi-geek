class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = "Log in successfully"
      redirect_to users_path
    else
      flash[:error] = "Log in failed"
      render 'new'
    end
  end
end
