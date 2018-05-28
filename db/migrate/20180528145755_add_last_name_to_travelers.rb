class AddLastNameToTravelers < ActiveRecord::Migration[5.2]
  def change
    add_column :travelers, :last_name, :string
  end
end
