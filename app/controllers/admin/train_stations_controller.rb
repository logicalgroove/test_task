module Admin
  class TrainStationsController < AdminController
    before_action :load_ts, only: [:edit, :update, :destroy]

    def index
      @train_stations = TrainStation.all
    end

    def new
      @train_station = TrainStation.new
    end

    def create
      @train_station = TrainStation.new(ts_params)
      if @train_station.save
        redirect_to admin_train_stations_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @train_station.update(ts_params)
        redirect_to admin_train_stations_path
      else
        render :edit
      end
    end

    def destroy
      redirect_to admin_train_stations_path if @train_station.destroy
    end

    private

    def load_ts
      @train_station = TrainStation.find(params[:id])
    end

    def ts_params
      params.require(:train_station).permit(:name, :address, :info, :phone, :beverage_store_open, :beverage_store_close)
    end
  end
end
