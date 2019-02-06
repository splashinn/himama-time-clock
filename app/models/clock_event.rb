class ClockEvent < ApplicationRecord
  belongs_to :user
  belongs_to :clock_event_type
end
