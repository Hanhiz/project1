class TourPackage < ApplicationRecord
  belongs_to :tour

  validates_presence_of :tour_id, :name, :description, :price
  validates_length_of :name, maximum: 255
  validates_length_of :description, maximum: 1000
  validates_numericality_of :price, greater_than_or_equal_to: 0
end
