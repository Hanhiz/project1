class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.date :date
      t.decimal :amount, precision: 10, scale: 2
      t.string :method
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
