class Users::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @puzzle_images = @user.puzzle_images.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user.id),notice: "変更を保存しました。"
    else
      flash[:alert] = "項目を入力してください"
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: "アカウントを削除しました。"
  end
  
  protected
  
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
