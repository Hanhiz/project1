class CreateCustomerPreferences < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_preferences do |t|
      t.string :preferred_destination
      t.date :preferred_travel_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
