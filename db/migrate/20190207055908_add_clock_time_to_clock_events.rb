class AddClockTimeToClockEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :clock_events, :clock_time, :datetime
  end
end
