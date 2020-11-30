class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if @user.is_deleted == false
      @posts = @user.posts
    else
      redirect_to root_path
    end
  end

  def browsing
    @user = User.find(params[:id])
    if @user.is_deleted == false
      @alcohols = @user.alcohols
    else
      redirect_to root_path
    end
  end

  def index
    @users = User.all.where(is_deleted: false).reverse_order
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_personal_path(current_user.id)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_personal_path(@user.id)
    else
      render "edit"
    end
  end

  def personal
    #@user = User.find(params[:id])
    @user = User.where(id: params[:id], is_deleted: false).first
    if @user.present?
    else
      redirect_to root_path
    end
  end


  def hide
    @user = User.find(params[:id])
    @user.update!(is_deleted: true)
    Nice.where(user_id: @user.id).destroy_all
    Pet.where(user_id: @user.id).destroy_all
    Post.where(user_id: @user.id).destroy_all
    Comment.where(user_id: @user.id).destroy_all
    Impression.where(user_id: @user.id).destroy_all
    reset_session
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image, :birthplace_id, :sex_id, :booze_id, :prefecture_id, :sake_id)
  end
end
