# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role                   :integer
#  first_name             :string
#  middle_name            :string
#  last_name              :string
#  prefered_name          :string
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, :last_name

  enum role: [:staff, :admin]
  after_initialize :set_default_role, :if => :new_record?

  has_many :clock_events

  scope :not_admin, -> { where.not(role: 1) }

  def set_default_role
    self.role ||= :staff
  end

  def name
    return if self.admin?
    full_name = self.last_name + ", " + self.first_name
    if self.prefered_name.present?
      full_name + " (#{self.prefered_name})"
    else
      full_name
    end
  end

  def clock_in_today?
    self.clock_events.today.clock_in.present?
  end

  def clock_out_today?
    self.clock_events.today.clock_out.present?
  end
end
