class AddTripDateToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :trip_date, :string
  end
end
