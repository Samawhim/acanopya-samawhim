class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.float :price
      t.string :category
      t.string :address
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
