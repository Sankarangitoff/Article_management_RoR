class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, except: [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path, notice: "User updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, notice: "User deleted successfully"
  end

  private

  def admin_only
    redirect_to root_path, alert: "Access denied." unless current_user.admin?
  end

  def user_params
    params.require(:user).permit(:email, :role)
  end
end

