class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post = @user.posts
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_personal_path(current_user.id)
    end
  end

  def update
    @user = user.find(params[:id])
    if @user.update(user_params)
      redirect_to user_personal_path(@user.id)
    else
      render "edit"
    end
  end

  def personal
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image, :birthplace_id, :sex_id, :booze_id, :prefecture_id)
  end
end
