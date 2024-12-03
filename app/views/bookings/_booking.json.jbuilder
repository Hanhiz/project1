json.extract! booking, :id, :date, :number_of_people, :total_amount, :tour_id, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
