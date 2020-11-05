class PostsController < ApplicationController

  def new
    @post = Post.new
    #@post.images.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id == current_user.id
    if @post.save
      redirect_to post_path(@post.idf)
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
    #@images = @post.images
  end


end
