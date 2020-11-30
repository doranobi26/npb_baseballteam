class AlcoholsController < ApplicationController

  def new
    @alcohol = Alcohol.new
    @alcohol.pictures.new
  end

  def create
    @alcohol = Alcohol.new(alcohol_params)
    @alcohol.user_id = current_user.id
    if @alcohol.save
      redirect_to alcohol_path(@alcohol.id)
    else
      @alcohol.pictures.new
      render "new"
    end
  end

  def index
    user=User.where(is_deleted: false)
    @alcohols = Alcohol.all
  end

  def show
    @alcohol = Alcohol.find(params[:id])
    @user = @alcohol.user
    @impression=Impression.new
    @pictures = @alcohol.pictures
  end

  def edit
    @alcohol = Alcohol.find(params[:id])
    if current_user != @alcohol.user
      redirect_to root_path
    end
  end

  def update
    @alcohol = Alcohol.find(params[:id])
    if  @alcohol.update(alcohol_params)
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
    params.require(:alcohol).permit(:title, :caption, :brand, :genre_id, pictures_pictures: [])
  end
end
