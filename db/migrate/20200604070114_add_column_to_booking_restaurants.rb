class AddColumnToBookingRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :booking_restaurants, :status_reservation, :string, default: "pending"
  end
end
