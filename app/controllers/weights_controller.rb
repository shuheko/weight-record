class WeightsController < ApplicationController
  def index
    @weights = Weight.all
  end
end
