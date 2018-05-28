class RenameColumnInTravelers < ActiveRecord::Migration[5.2]
  def change
    rename_column :travelers, :name, :first_name
  end
end
