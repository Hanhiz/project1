class CreateVehicleSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_schedules do |t|
      t.datetime :departure_time
      t.datetime :arrival_time
      t.string :route
      t.references :vehicle, null: false, foreign_key: true
      t.references :tour, null: false, foreign_key: true

      t.timestamps
    end
  end
end