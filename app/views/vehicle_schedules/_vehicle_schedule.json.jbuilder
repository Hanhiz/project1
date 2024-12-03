json.extract! vehicle_schedule, :id, :departure_time, :arrival_time, :route, :vehicle_id, :tour_id, :created_at, :updated_at
json.url vehicle_schedule_url(vehicle_schedule, format: :json)
