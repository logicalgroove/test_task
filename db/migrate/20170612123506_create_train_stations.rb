class CreateTrainStations < ActiveRecord::Migration[5.0]
  def change
    create_table :train_stations do |t|
      t.string :phone
      t.string :address
      t.string :info

      t.timestamps
    end
  end
end
