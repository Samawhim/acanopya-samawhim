class CreateBookingFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_flats do |t|
      t.references :flat, null: false, foreign_key: true
      t.references :trip, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
