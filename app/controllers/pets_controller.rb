class PetsController < ApplicationController

  def create
    alcohol = Alcohol.find(params[:alcohol_id])
    pet = alcohol.pets.new(user_id: current_user.id)
    pet.save
    redirect_to request.referer
  end

  def destroy
    alcohol = Alcohol.find(params[:alcohol_id])
    pet = alcohol.pets.find_by(user_id: current_user.id)
    pet.destroy
    redirect_to request.referer
  end
end
