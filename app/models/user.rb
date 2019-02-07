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

  enum role: [:teacher, :admin]
  after_initialize :set_default_role, :if => :new_record?

  has_many :clock_events

  def set_default_role
    self.role ||= :teacher
  end
  
  def name
    full_name = self.last_name + ", " + self.first_name
    if self.prefered_name
      full_name + " (#{self.prefered_name})"
    else
      full_name
    end
  end
end
