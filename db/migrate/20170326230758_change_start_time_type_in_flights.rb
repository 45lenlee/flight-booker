class ChangeStartTimeTypeInFlights < ActiveRecord::Migration[5.0]
  def change
    remove_column :flights, :start_time, :datetime
  end
end
