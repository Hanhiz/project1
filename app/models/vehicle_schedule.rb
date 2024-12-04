class VehicleSchedule < ApplicationRecord
  belongs_to :vehicle
  belongs_to :tour

  validates_presence_of :vehicle_id, :tour_id, :departure_time, :arrival_time, :route
  validates_length_of :route, maximum: 1000
  validate :arrival_time_after_departure_time

  private

  def arrival_time_after_departure_time
    return if arrival_time.blank? || departure_time.blank?

    if arrival_time < departure_time
      errors.add(:arrival_time, "must be after the departure time")
    end
  end
end
