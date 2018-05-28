class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :location_id
      t.integer :traveler_id

      t.timestamps
    end
  end
end
