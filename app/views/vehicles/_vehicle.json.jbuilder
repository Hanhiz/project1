json.extract! vehicle, :id, :vehicle_type, :capacity, :model, :registration_number, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
