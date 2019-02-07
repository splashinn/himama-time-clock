# == Schema Information
#
# Table name: clock_events
#
#  id                  :bigint(8)        not null, primary key
#  user_id             :bigint(8)
#  clock_event_type_id :bigint(8)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  clock_time          :datetime
#

class ClockEvent < ApplicationRecord
  before_save :set_clock_time
  
  belongs_to :user
  belongs_to :clock_event_type

  scope :today, -> { where('clock_time >= ?', Time.zone.now.beginning_of_day) }
  scope :clock_in, -> { where(clock_event_type_id: 1) }
  scope :clock_out, -> { where(clock_event_type_id: 2) }

  def set_clock_time
    self.clock_time = Time.zone.now if self.clock_time.blank?
  end

  def already_exist_at_the_day?
    new_record_date = self.clock_time.beginning_of_day
    find_existing_record = ClockEvent.where(
      user_id: self.user_id,
      clock_event_type_id: self.clock_event_type_id).where(
      "clock_time >= ?", new_record_date)
    find_existing_record.size > 0 ? true : false
  end
end
