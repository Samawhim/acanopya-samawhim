class AddStartDateToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :booking_flats, :start_date, :date
    add_column :booking_flats, :end_date, :date
    add_column :booking_restaurants, :start_date, :date
    add_column :booking_restaurants, :end_date, :date
    add_column :booking_activities, :start_date, :date
    add_column :booking_activities, :end_date, :date
  end
end
