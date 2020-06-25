class CreateBookingRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_restaurants do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :trip, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
