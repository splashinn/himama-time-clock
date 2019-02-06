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
end
