class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.integer :vehicle_type
      t.integer :capacity
      t.string :model
      t.string :registration_number

      t.timestamps
    end
  end
end