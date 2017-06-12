class TrainStationsController < ApplicationController
  def index
    @train_stations = TrainStation.all
  end
end
