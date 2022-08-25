class AddCoordinatesToGuitars < ActiveRecord::Migration[7.0]
  def change
    add_column :guitars, :latitude, :float
    add_column :guitars, :longitude, :float
  end
end
