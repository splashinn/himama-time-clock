# == Schema Information
#
# Table name: clock_events
#
#  id                  :bigint(8)        not null, primary key
#  user_id             :bigint(8)
#  clock_event_type_id :bigint(8)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ClockEvent < ApplicationRecord
  belongs_to :user
  belongs_to :clock_event_type

  scope :today, -> { where('created_at >= ?', Time.zone.now.beginning_of_day) }
  scope :clock_in, -> { where(clock_event_type_id: 1) }
  scope :clock_out, -> { where(clock_event_type_id: 2) }
end
