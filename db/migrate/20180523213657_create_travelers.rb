class CreateTravelers < ActiveRecord::Migration[5.2]
  def change
    create_table :travelers do |t|
      t.string :name
      t.string :dob
      t.string :hometown

      t.timestamps
    end
  end
end
