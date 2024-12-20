class Vehicle < ApplicationRecord
    has_many :vehicle_schedules 
    enum vehicle_type: { train: 0, airplane: 1, tourbus: 2 } 
    validates_presence_of :vehicle_type, :capacity, :model, :registration_number 
    validates_numericality_of :capacity, only_integer: true, greater_than: 0 
    validates_length_of :model, maximum: 255 
    validates_length_of :registration_number, maximum: 255
end
