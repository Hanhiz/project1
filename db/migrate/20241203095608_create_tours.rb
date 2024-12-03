class CreateTours < ActiveRecord::Migration[7.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.string :destination
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
