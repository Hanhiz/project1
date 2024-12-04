class TourSchedule < ApplicationRecord
  belongs_to :tour

  validates_presence_of :tour_id, :itinerary, :day_number, :activity_description
  validates_length_of :itinerary, maximum: 1000
  validates_numericality_of :day_number, only_integer: true, greater_than: 0
  validates_length_of :activity_description, maximum: 1000
end

