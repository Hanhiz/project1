class VehicleSchedule < ApplicationRecord
  belongs_to :vehicle
  belongs_to :tour
end
