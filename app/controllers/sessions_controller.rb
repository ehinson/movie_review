class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "Welcome, you've logged in"
      redirect_to root_path

    else
      flash[:error] = "Never forget what you are, for surely the world will not. Make it your strength. Then it can never be your weakness. Armour yourself in it, and it will never be used to hurt you....Try to remember your correct username or password."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Goodbye!"
    redirect_to root_path
  end
end
