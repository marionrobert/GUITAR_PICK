class ChangeLocationToAddressInGuitars < ActiveRecord::Migration[7.0]
  def change
    rename_column :guitars, :location, :address
  end
end
