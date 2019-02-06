class CreateClockEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :clock_events do |t|
      t.references :user, foreign_key: true
      t.references :clock_event_type, foreign_key: true

      t.timestamps
    end
  end
end
