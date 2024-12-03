class CreateTourSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :tour_schedules do |t|
      t.text :itinerary
      t.integer :day_number
      t.text :activity_description
      t.references :tour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
