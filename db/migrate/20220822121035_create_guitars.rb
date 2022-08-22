class CreateGuitars < ActiveRecord::Migration[7.0]
  def change
    create_table :guitars do |t|
      t.string :brand
      t.string :category
      t.string :location
      t.float :daily_price
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
