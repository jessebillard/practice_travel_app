class AddTripTimeToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :trip_time, :time
  end
end
