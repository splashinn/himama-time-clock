# == Schema Information
#
# Table name: clock_event_types
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ClockEventType < ApplicationRecord
  validates :name, presence: true
  has_many :clock_events
end
