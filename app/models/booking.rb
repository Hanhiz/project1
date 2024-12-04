class Booking < ApplicationRecord
  belongs_to :tour
  belongs_to :user
  belongs_to :payment

  validates_presence_of :user_id, :tour_id, :date, :number_of_people, :total_amount
  validates_numericality_of :number_of_people, only_integer: true, greater_than: 0
  validates_numericality_of :total_amount, greater_than_or_equal_to: 0
end
