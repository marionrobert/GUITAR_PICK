class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.date :starting_date
      t.date :end_date
      t.references :instrument_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
