class Users::UsersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: "アカウントを削除しました。"
  end
end
