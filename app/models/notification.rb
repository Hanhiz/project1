class Notification < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id, :message, :date, :read_status
  validates_length_of :message, maximum: 1000
  validates_inclusion_of :read_status, in: [true, false]
end
