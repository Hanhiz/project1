class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    drop_table :payments, if_exists: true

    create_table :payments do |t|
      t.references :booking, null: false, foreign_key: true
      t.date :date
      t.decimal :amount, precision: 10, scale: 2
      t.integer :method

      t.timestamps
    end
  end
end
