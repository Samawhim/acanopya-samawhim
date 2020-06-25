class CreateFlats < ActiveRecord::Migration[6.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.float :price
      t.integer :capicity
      t.text :description
      t.float :latitude
      t.boolean :availability
      t.float :longitude
      t.string :label

      t.timestamps
    end
  end
end
