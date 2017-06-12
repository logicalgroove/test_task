class AddNameToTrainStations < ActiveRecord::Migration[5.0]
  def change
    add_column :train_stations, :name, :string
  end
end
