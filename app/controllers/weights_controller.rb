class WeightsController < ApplicationController
  def index
    @weights = current_user.weights
    @first_weight = @weights.where(date: 1).pluck(:value).to_s
    @progress = @weights.maximum(:date)
    @newest_weight = @weights.where(id: @weights.maximum(:date)).pluck(:value).to_s
    @hoge = @newest_weight-@first_weight
  end

  def new
    @weight = Weight.new
  end

  def create
    Weight.create(weight_params)
  end

  def destroy
    weight = Weight.find(params[:id])
    weight.destroy
  end

  private

  def weight_params
    params.require(:weight).permit(:value, :date).merge(user_id: current_user.id)
  end
end
