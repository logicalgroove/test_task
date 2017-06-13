class AddBeverageStoreHoursToTrainStations < ActiveRecord::Migration[5.0]
  def change
    add_column :train_stations, :beverage_store_open, :time
    add_column :train_stations, :beverage_store_close, :time
  end
end
