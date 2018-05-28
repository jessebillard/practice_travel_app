class ChangeTripDateDataTypeToTrips < ActiveRecord::Migration[5.2]
  def change
    change_column :trips, :trip_date, :date
  end
end
