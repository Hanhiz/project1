class CreateTourPackages < ActiveRecord::Migration[7.0]
  def change
    create_table :tour_packages do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.references :tour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
