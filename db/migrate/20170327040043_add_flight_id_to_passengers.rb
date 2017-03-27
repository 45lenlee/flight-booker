class AddFlightIdToPassengers < ActiveRecord::Migration[5.0]
  def change
    add_column :passengers, :flight_id, :integer
    add_index :passengers, :flight_id
  end
end
