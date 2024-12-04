class CreateTours < ActiveRecord::Migration[7.0]
  def change
    unless table_exists?(:tours)
      create_table :tours do |t|
        t.string :name
        t.string :destination
        t.date :start_date
        t.date :end_date
        t.decimal :minimum_price, precision: 10, scale: 2
        t.integer :max_capacity

        t.timestamps
      end
    end
  end
end
