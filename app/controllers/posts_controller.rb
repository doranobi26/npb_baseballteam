class PostsController < ApplicationController

  def new
    @post = Post.new
    @post.images.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to post_path(@post.id)
    else
      @post.images.new
      render "new"
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @user  = @post.user
    @comment=Comment.new
    @images = @post.images
  end

  def edit
    @post = Post.find(params[:id])
    if current_user != @post.user
      redirect_to root_path
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post.id),notice: "投稿の更新に成功しました"
    else render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path,notice: "投稿を削除しました"
  end

  private
  def post_params
    params.require(:post).permit(:title, :caption, :user_id,:player,:role_id, :affiliation_id, images_images: [])
  end


end
