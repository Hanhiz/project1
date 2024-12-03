json.extract! tour_schedule, :id, :itinerary, :day_number, :activity_description, :tour_id, :created_at, :updated_at
json.url tour_schedule_url(tour_schedule, format: :json)
