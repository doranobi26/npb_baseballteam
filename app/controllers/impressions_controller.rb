class ImpressionsController < ApplicationController

  def create
    alcohol = Alcohol.find(params[:alcohol_id])
    impression = alcohol.impressions.new(impression_params)
    impression.user_id = current_user.id
    impression.evaluation = params[:review][:evaluation]
    impression.save
    redirect_to request.referer
  end

  def destroy
    Impression.find_by(id: params[:id], alcohol_id: params[:alcohol_id]).destroy
    redirect_to request.referer
  end

  def impression_params
    params.require(:impression).permit(:impression)
  end
end
