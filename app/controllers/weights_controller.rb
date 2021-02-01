class WeightsController < ApplicationController
  def index
    @weights = Weight.all
  end

  def new
    @weight = Weight.new
  end

  def create
    Weight.create(weight_params)
  end

  private

  def weight_params
    params.require(:weight).permit(:value, :date)
  end
end
