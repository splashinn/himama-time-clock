class CreateClockEventTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :clock_event_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
