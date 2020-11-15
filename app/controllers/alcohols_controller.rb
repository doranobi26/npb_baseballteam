class AlcoholsController < ApplicationController

  def new
    @alcohol = Alcohol.new
  end

  def create
    @alcohol = Alcohol.new(alcohol_params)
    @alcohol.user_id = current_user.id
    if @alcohol.save
      redirect_to alcohol_path(@alcohol.id)
    else
      render "new"
    end
  end

  def index
    @alcohols = Alcohol.all
  end

  def show
    @alcohol = Alcohol.find(params[:id])
    @user = @alcohol.user
  end

  def edit
    @alcohol = Alcohol.find(params[:id])
    if current_user != @alcohol.user
      redirect_to root_path
    end
  end

  def update
    @alcohol = Alcohol.find(params[:id])
    if  @alcohol.update
      redirect_to alcohol_path
    else
      render "edit"
    end
  end

  def destroy
    @alcohol = Alcohol.find(params[:id])
    @alcohol.destroy
    redirect_to alcohols_path
  end


  private
  def alcohol_params
    params.require(:alcohol).permit(:title, :caption, :brand, :genre_id)
  end
end
