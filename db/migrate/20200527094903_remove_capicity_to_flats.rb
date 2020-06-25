class RemoveCapicityToFlats < ActiveRecord::Migration[6.0]
  def change
    remove_column :flats, :capicity, :integer
  end
end
