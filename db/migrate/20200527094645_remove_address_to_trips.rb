class RemoveAddressToTrips < ActiveRecord::Migration[6.0]
  def change
    remove_column :trips, :address, :string
  end
end
