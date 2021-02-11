class WeightsController < ApplicationController

  before_action :authenticate_user!, only: [:index]

  def index
    @weight = Weight.new

    @weights = Weight.all.where(user_id: current_user.id).order(:when).page(params[:page]).per(10)

    @weight_data = Weight.where(user_id: current_user.id).pluck(:value)
    gon.weight_data = Weight.where(user_id: current_user.id).order(:when).pluck(:value)
    gon.weight_when = Weight.where(user_id: current_user.id).order(:when).pluck(:when)
  end
  
  def create
    @weight = Weight.new(weight_params)
    if @weight.save
      redirect_to weights_path
    else
      render :index
    end
  end

  def destroy
    @weight = Weight.find(params[:id])
    if @weight.destroy
			redirect_to weights_path
		end
  end

  private
    def weight_params
      params.require(:weight).permit(:user_id, :when, :value)
		end

end
