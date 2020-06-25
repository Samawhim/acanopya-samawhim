class AddColumnToBookingFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :booking_flats, :status_reservation, :string, default: "pending"
  end
end
